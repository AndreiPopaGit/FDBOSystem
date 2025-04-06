
# 📘 Data Definition Scripts

## 🐘 PostgreSQL Tables (`pgAdmin`)

### `students`
```sql
CREATE TABLE public.students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    enrollment_date DATE
);
```

### `courses`
```sql
CREATE TABLE public.courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INTEGER
);
```

### `enrollments`
```sql
CREATE TABLE public.enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id),
    course_id INTEGER REFERENCES courses(course_id),
    enroll_date DATE
);
```

---

## 🟧 Oracle Tables

### `COURSE_ASSIGNMENTS`
```sql
CREATE TABLE COURSE_ASSIGNMENTS (
    ASSIGNMENT_ID NUMBER PRIMARY KEY,
    PROFESSOR_ID NUMBER,
    COURSE_NAME VARCHAR2(100 BYTE),
    SEMESTER VARCHAR2(15 BYTE)
);
```

### `PROFESSORS`
```sql
CREATE TABLE PROFESSORS (
    PROFESSOR_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100 BYTE),
    EMAIL VARCHAR2(100 BYTE),
    DEPT_ID NUMBER,
    FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENTS(DEPT_ID)
);
```

### `DEPARTMENTS`
```sql
CREATE TABLE DEPARTMENTS (
    DEPT_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100 BYTE),
    BUILDING VARCHAR2(100 BYTE)
);
```

### `CLASSROOMS`
```sql
CREATE TABLE CLASSROOMS (
    ROOM_ID NUMBER PRIMARY KEY,
    BUILDING VARCHAR2(100 BYTE),
    ROOM_NUMBER VARCHAR2(10 BYTE),
    CAPACITY NUMBER
);
```

---

## 🍃 MongoDB Collections (`mds`)

### `StudentsProfiles`
```json
[
  { "student_id": 1, "city": "Iasi", "language": "English", "gpa": 9.3 },
  { "student_id": 2, "city": "Cluj", "language": "German", "gpa": 8.7 },
  { "student_id": 3, "city": "Bucharest", "language": "French", "gpa": 9.1 }
]
```

### `ProfessorsProfiles`
```json
[
  { "professor_id": 101, "title": "PhD", "expertise": ["AI", "ML"], "country": "Romania" },
  { "professor_id": 102, "title": "PhD", "expertise": ["Databases"], "country": "Germany" }
]
```

### `SkillsTaxonomy`
```json
[
  { "skill_id": 1, "name": "SQL", "type": "Database", "level": "Intermediate" },
  { "skill_id": 2, "name": "Python", "type": "Programming", "level": "Advanced" }
]
```
