CREATE DATABASE LINK orcl_link
CONNECT TO uni_admin IDENTIFIED BY uni123
USING '(DESCRIPTION=
          (ADDRESS=(PROTOCOL=TCP)(HOST=oracle-xe-21c)(PORT=1521))
          (CONNECT_DATA=(SERVICE_NAME=XEPDB1))
       )';


SELECT * FROM dual@orcl_link;

DECLARE
  v_url VARCHAR2(4000) := 'http://host.docker.internal:3000/students';
  v_req  UTL_HTTP.REQ;
  v_resp UTL_HTTP.RESP;
  v_buffer VARCHAR2(4000);
  v_response CLOB := '';
BEGIN
  v_req := UTL_HTTP.BEGIN_REQUEST(v_url);
  v_resp := UTL_HTTP.GET_RESPONSE(v_req);

  LOOP
    BEGIN
      UTL_HTTP.READ_LINE(v_resp, v_buffer);
      v_response := v_response || v_buffer || CHR(10);
    EXCEPTION
      WHEN UTL_HTTP.END_OF_BODY THEN EXIT;
    END;
  END LOOP;

  UTL_HTTP.END_RESPONSE(v_resp);
  DBMS_OUTPUT.PUT_LINE('Response: ' || v_response);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('❌ Error: ' || SQLERRM);
END;
/

CREATE OR REPLACE FUNCTION fetch_pg_students RETURN CLOB IS
  v_url VARCHAR2(4000) := 'http://host.docker.internal:3000/students';
  v_req  UTL_HTTP.REQ;
  v_resp UTL_HTTP.RESP;
  v_buffer VARCHAR2(4000);
  v_response CLOB := '';
BEGIN
  v_req := UTL_HTTP.BEGIN_REQUEST(v_url);
  v_resp := UTL_HTTP.GET_RESPONSE(v_req);

  LOOP
    BEGIN
      UTL_HTTP.READ_LINE(v_resp, v_buffer);
      v_response := v_response || v_buffer || CHR(10);
    EXCEPTION
      WHEN UTL_HTTP.END_OF_BODY THEN EXIT;
    END;
  END LOOP;

  UTL_HTTP.END_RESPONSE(v_resp);
  RETURN v_response;
END;
/


CREATE OR REPLACE VIEW pg_students_view AS
SELECT *
FROM JSON_TABLE(
  fetch_pg_students(),
  '$[*]'
  COLUMNS (
    student_id        NUMBER PATH '$.student_id',
    name              VARCHAR2(100) PATH '$.name',
    email             VARCHAR2(100) PATH '$.email',
    enrollment_date   DATE PATH '$.enrollment_date'
  )
);


SELECT s.name AS student_name,
       s.email,
       p.name AS professor_name,
       d.name AS department
FROM pg_students_view s
JOIN professors@orcl_link p ON 1=1
JOIN departments@orcl_link d ON p.dept_id = d.dept_id;


SELECT s.name AS student_name,
       s.email,
       c.building,
       c.room_number,
       c.capacity
FROM pg_students_view s
JOIN classrooms@orcl_link c ON c.capacity >= 30;


CREATE OR REPLACE FUNCTION fetch_pg_enrollments RETURN CLOB IS
  v_url VARCHAR2(4000) := 'http://host.docker.internal:3000/enrollments';
  v_req  UTL_HTTP.REQ;
  v_resp UTL_HTTP.RESP;
  v_buffer VARCHAR2(4000);
  v_response CLOB := '';
BEGIN
  v_req := UTL_HTTP.BEGIN_REQUEST(v_url);
  v_resp := UTL_HTTP.GET_RESPONSE(v_req);

  LOOP
    BEGIN
      UTL_HTTP.READ_LINE(v_resp, v_buffer);
      v_response := v_response || v_buffer || CHR(10);
    EXCEPTION
      WHEN UTL_HTTP.END_OF_BODY THEN EXIT;
    END;
  END LOOP;

  UTL_HTTP.END_RESPONSE(v_resp);
  RETURN v_response;
END;
/


CREATE OR REPLACE VIEW pg_enrollments_view AS
SELECT *
FROM JSON_TABLE(
  fetch_pg_enrollments(),
  '$[*]'
  COLUMNS (
    enrollment_id   NUMBER PATH '$.enrollment_id',
    student_id      NUMBER PATH '$.student_id',
    course_id       NUMBER PATH '$.course_id',
    enroll_date     DATE   PATH '$.enroll_date'
  )
);


--------Students + enrollments + Classroom capacity

SELECT s.name AS student_name,
       s.email,
       e.course_id,
       e.enroll_date,
       c.building,
       c.room_number,
       c.capacity
FROM pg_students_view s
JOIN pg_enrollments_view e ON s.student_id = e.student_id
JOIN classrooms@orcl_link c ON c.capacity >= 30;


------enrollment count per student
SELECT s.name AS student_name,
       COUNT(e.enrollment_id) AS total_enrollments
FROM pg_students_view s
LEFT JOIN pg_enrollments_view e ON s.student_id = e.student_id
GROUP BY s.name;


------Document CSV------


CREATE TABLE periods_ext (
  period_id      NUMBER,
  period_label   VARCHAR2(50),
  start_date     DATE,
  end_date       DATE
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY EXT_FILE_DS
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '\"'
    MISSING FIELD VALUES ARE NULL
    (
      period_id      INTEGER EXTERNAL,
      period_label   CHAR(50),
      start_date     DATE "YYYY-MM-DD",
      end_date       DATE "YYYY-MM-DD"
    )
  )
  LOCATION ('13_DS_CSV_Periods.csv')
)
REJECT LIMIT UNLIMITED;

SELECT * FROM periods_ext;


--------Query with document

SELECT s.name, s.email, e.enroll_date, p.period_label
FROM pg_students_view s
JOIN pg_enrollments_view e ON s.student_id = e.student_id
JOIN periods_ext p ON e.enroll_date BETWEEN p.start_date AND p.end_date;


--------No SQL Mongo DB
----function to connect rest auth encoded as base 64

CREATE OR REPLACE FUNCTION fetch_mongo_students_profiles RETURN CLOB IS
  v_url VARCHAR2(4000) := 'http://host.docker.internal:8080/StudentsProfiles';
  v_req  UTL_HTTP.REQ;
  v_resp UTL_HTTP.RESP;
  v_buffer VARCHAR2(4000);
  v_response CLOB := '';
BEGIN
  v_req := UTL_HTTP.BEGIN_REQUEST(v_url);
  UTL_HTTP.SET_HEADER(v_req, 'Authorization', 'Basic YWRtaW46c2VjcmV0');
  v_resp := UTL_HTTP.GET_RESPONSE(v_req);
  LOOP
    BEGIN
      UTL_HTTP.READ_LINE(v_resp, v_buffer);
      v_response := v_response || v_buffer || CHR(10);
    EXCEPTION
      WHEN UTL_HTTP.END_OF_BODY THEN EXIT;
    END;
  END LOOP;
  UTL_HTTP.END_RESPONSE(v_resp);
  RETURN v_response;
END;
/

-- 🔧 2. View: mongo_students_profiles_view
CREATE OR REPLACE VIEW mongo_students_profiles_view AS
SELECT *
FROM JSON_TABLE(
  fetch_mongo_students_profiles(),
  '$[*]'
  COLUMNS (
    student_id  NUMBER PATH '$.student_id',
    city        VARCHAR2(50) PATH '$.city',
    language    VARCHAR2(50) PATH '$.language',
    gpa         NUMBER PATH '$.gpa'
  )
);

-----Analytical queries
-----Query 1: Match Students by City and GPA with Classrooms

-- 🔹 Query 1: Match Students by City and GPA with Classrooms
SELECT s.name AS student_name,
       s.email,
       m.city,
       m.gpa,
       c.building,
       c.capacity
FROM pg_students_view s
JOIN mongo_students_profiles_view m ON s.student_id = m.student_id
LEFT JOIN classrooms@orcl_link c ON LOWER(m.city) = LOWER(c.building)
WHERE m.gpa > 8;

-- 🔹 Query 2: Aggregated Language Distribution per Department
SELECT d.name AS department,
       m.language,
       COUNT(*) AS student_count
FROM pg_students_view s
JOIN mongo_students_profiles_view m ON s.student_id = m.student_id
JOIN professors@orcl_link p ON p.professor_id = MOD(s.student_id * 3, 2) + 101
JOIN departments@orcl_link d ON p.dept_id = d.dept_id
GROUP BY d.name, m.language
ORDER BY student_count DESC;



------Debug for Mongo

BEGIN
  ORDS.ENABLE_SCHEMA(
    p_enabled => TRUE,
    p_schema => 'FDBO',
    p_url_mapping_type => 'BASE_PATH',
    p_url_mapping_pattern => 'fdbo',
    p_auto_rest_auth => FALSE
  );
  COMMIT;
END;




