# 📚 Proiect SIA – Integrarea Surselor de Date Eterogene în Oracle FDBO

## 🧩 Descriere generală

Acest proiect demonstrează integrarea mai multor surse de date eterogene într-un sistem federativ Oracle FDBO. Sursele de date includ:

- 🗄️ **Oracle XE** (relațional)
- 🐘 **PostgreSQL via PostgREST** (REST JSON)
- 🍃 **MongoDB via RESTHeart** (NoSQL JSON)
- 📄 **Fișier extern CSV** accesat prin Oracle External Table

Scopul proiectului a fost integrarea, consolidarea, interogarea și expunerea datelor prin vederi analitice și servicii REST prin Oracle ORDS.

---

## 🗂️ Tabele și Structuri de Date

| Tabel                         | Sursă de date         | Coloane                                                                 |
|------------------------------|-----------------------|-------------------------------------------------------------------------|
| `departments`                | Oracle XE             | `dept_id`, `name`, `building`                                          |
| `professors`                 | Oracle XE             | `professor_id`, `name`, `email`, `dept_id` (FK)                        |
| `classrooms`                 | Oracle XE             | `room_id`, `building`, `room_number`, `capacity`                       |
| `periods_ext`                | CSV External Table    | `period_id`, `period_label`, `start_date`, `end_date`                  |
| `pg_students_view`           | PostgreSQL via REST   | `student_id`, `name`, `email`, `enrollment_date`                       |
| `pg_enrollments_view`        | PostgreSQL via REST   | `enrollment_id`, `student_id`, `course_id`, `enroll_date`             |
| `StudentsProfiles`           | MongoDB via RESTHeart | `student_id`, `city`, `language`, `gpa`                                |
| `ProfessorsProfiles`         | MongoDB via RESTHeart | `professor_id`, `title`, `expertise`, `country`                        |
| `SkillsTaxonomy`             | MongoDB via RESTHeart | `skill_id`, `name`, `type`, `level`                                    |
| `mongo_students_profiles_view` | Oracle (view pe MongoDB) | `student_id`, `city`, `language`, `gpa`                            |

---

## 🔎 View-uri și Interogări

| Nume View/Query                        | Descriere                                                                    | Fișier                    |
|----------------------------------------|------------------------------------------------------------------------------|---------------------------|
| `pg_students_view`                     | Date despre studenți din PostgreSQL                                          | `OracleToPostgREST.sql`   |
| `pg_enrollments_view`                  | Înmatriculări din PostgreSQL                                                 | `OracleToPostgREST.sql`   |
| `mongo_students_profiles_view`         | Date din MongoDB accesate cu UTL_HTTP și JSON_TABLE                          | `OracleFDBODocker.sql`    |
| `Students_Profiles_Classrooms_View`    | Join între studenți (PostgreSQL), Mongo și săli (Oracle)                     | `Tables.txt`              |
| `Language_Distribution_Per_Department` | Distribuție limbi cunoscute per departament                                  | `Tables.txt`              |
| `Student_Enrollments_Periods`          | Join între înmatriculări și perioade CSV                                     | `Tables.txt`              |
| `student_course_allocations`           | Tabel de fapte: join între înmatriculări și capacități săli                  | `Tables.txt`              |
| `student_languages`                    | Tabel dimensional: limbile vorbite de studenți                               | `Tables.txt`              |
| `total_enrollments_per_student`        | View OLAP analitic: număr total de înmatriculări per student                 | `Tables.txt`              |

---

## 🌐 ORDS REST API

Au fost definite 2 resurse REST folosind Oracle ORDS:

| Endpoint URI                                                      | Sursă de date REST         | Descriere                         |
|------------------------------------------------------------------|----------------------------|-----------------------------------|
| `/ords/fdbo/students_api/students`                               | PostgreSQL via REST        | Returnează lista de studenți      |
| `/ords/fdbo/students_api/Students%20data`                        | MongoDB via RESTHeart      | Returnează profiluri de studenți  |

---

