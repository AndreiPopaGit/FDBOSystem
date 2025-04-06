# 📦 Data Insert Scripts (MongoDB, PostgreSQL, Oracle)

## 🍃 MongoDB Inserts

### `StudentsProfiles`
```javascript
db.StudentsProfiles.insertMany([
  {"student_id": 4, "city": "Wuland", "language": "Spanish", "gpa": 8.06},
  {"student_id": 5, "city": "Port Valerie", "language": "French", "gpa": 9.02},
  {"student_id": 6, "city": "Johnsonmouth", "language": "German", "gpa": 9.15},
  {"student_id": 7, "city": "Ellisville", "language": "Spanish", "gpa": 9.25},
  {"student_id": 8, "city": "Osbornetown", "language": "English", "gpa": 7.0},
  {"student_id": 9, "city": "New Christinamouth", "language": "German", "gpa": 9.1},
  {"student_id": 10, "city": "Lake Andreastad", "language": "German", "gpa": 7.72},
  {"student_id": 11, "city": "South Krista", "language": "Spanish", "gpa": 8.14},
  {"student_id": 12, "city": "Rodriguezton", "language": "Spanish", "gpa": 7.09},
  {"student_id": 13, "city": "Mendezmouth", "language": "Spanish", "gpa": 9.32},
  {"student_id": 14, "city": "Lake Jenniferport", "language": "English", "gpa": 7.5},
  {"student_id": 15, "city": "South Lauren", "language": "English", "gpa": 7.78},
  {"student_id": 16, "city": "New Michelleborough", "language": "German", "gpa": 8.34},
  {"student_id": 17, "city": "Port Philipstad", "language": "Spanish", "gpa": 9.72},
  {"student_id": 18, "city": "South Michael", "language": "English", "gpa": 9.65},
  {"student_id": 19, "city": "North Rachelton", "language": "Spanish", "gpa": 7.98},
  {"student_id": 20, "city": "Scotttown", "language": "Spanish", "gpa": 7.15},
  {"student_id": 21, "city": "East Clayton", "language": "Spanish", "gpa": 7.56},
  {"student_id": 22, "city": "Hunterville", "language": "English", "gpa": 9.51},
  {"student_id": 23, "city": "South Patricia", "language": "German", "gpa": 9.96},
  {"student_id": 24, "city": "Livingstonville", "language": "Spanish", "gpa": 9.85},
  {"student_id": 25, "city": "Brownchester", "language": "Spanish", "gpa": 7.95},
  {"student_id": 26, "city": "Lake Stephanie", "language": "German", "gpa": 7.04},
  {"student_id": 27, "city": "Jordanchester", "language": "English", "gpa": 9.94},
  {"student_id": 28, "city": "South Samanthamouth", "language": "English", "gpa": 7.57}
])
```

### `ProfessorsProfiles`
```javascript
db.ProfessorsProfiles.insertMany([
  {"professor_id": 103, "title": "PhD", "expertise": ["Security", "Cloud"], "country": "Germany"},
  {"professor_id": 104, "title": "PhD", "expertise": ["Big Data", "Databases"], "country": "France"},
  {"professor_id": 105, "title": "PhD", "expertise": ["Cloud", "ML"], "country": "Romania"},
  {"professor_id": 106, "title": "PhD", "expertise": ["Networks", "Big Data"], "country": "Romania"},
  {"professor_id": 107, "title": "PhD", "expertise": ["AI", "Databases"], "country": "USA"},
  {"professor_id": 108, "title": "PhD", "expertise": ["Big Data", "AI"], "country": "France"},
  {"professor_id": 109, "title": "PhD", "expertise": ["ML", "Cloud"], "country": "France"},
  {"professor_id": 110, "title": "PhD", "expertise": ["AI", "ML"], "country": "France"},
  {"professor_id": 111, "title": "PhD", "expertise": ["Big Data", "AI"], "country": "Romania"},
  {"professor_id": 112, "title": "PhD", "expertise": ["AI", "ML"], "country": "France"},
  {"professor_id": 113, "title": "PhD", "expertise": ["Security", "Databases"], "country": "France"},
  {"professor_id": 114, "title": "PhD", "expertise": ["Security", "AI"], "country": "USA"},
  {"professor_id": 115, "title": "PhD", "expertise": ["Cloud", "Big Data"], "country": "USA"},
  {"professor_id": 116, "title": "PhD", "expertise": ["Cloud", "Networks"], "country": "France"},
  {"professor_id": 117, "title": "PhD", "expertise": ["Big Data", "Security"], "country": "Germany"},
  {"professor_id": 118, "title": "PhD", "expertise": ["ML", "Networks"], "country": "France"},
  {"professor_id": 119, "title": "PhD", "expertise": ["AI", "ML"], "country": "Germany"},
  {"professor_id": 120, "title": "PhD", "expertise": ["Databases", "Big Data"], "country": "France"},
  {"professor_id": 121, "title": "PhD", "expertise": ["Big Data", "Databases"], "country": "Romania"},
  {"professor_id": 122, "title": "PhD", "expertise": ["Databases", "Security"], "country": "Romania"}
])
```

### `SkillsTaxonomy`
```javascript
db.SkillsTaxonomy.insertMany([
  {"skill_id": 3, "name": "SQL", "type": "Database", "level": "Beginner"},
  {"skill_id": 4, "name": "Python", "type": "Programming", "level": "Intermediate"},
  {"skill_id": 5, "name": "Java", "type": "Programming", "level": "Beginner"},
  {"skill_id": 6, "name": "JavaScript", "type": "Programming", "level": "Beginner"},
  {"skill_id": 7, "name": "Docker", "type": "DevOps", "level": "Advanced"},
  {"skill_id": 8, "name": "Kubernetes", "type": "DevOps", "level": "Intermediate"},
  {"skill_id": 9, "name": "React", "type": "Programming", "level": "Intermediate"},
  {"skill_id": 10, "name": "Node.js", "type": "Programming", "level": "Intermediate"},
  {"skill_id": 11, "name": "C++", "type": "Programming", "level": "Advanced"},
  {"skill_id": 12, "name": "NoSQL", "type": "Database", "level": "Beginner"}
])
```

## 🐘 PostgreSQL Inserts

### `students`
```sql
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (1, 'Norma Fisher', 'ysullivan@yahoo.com', '2023-02-28');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (2, 'Heather Snow', 'juancampos@lloyd.org', '2023-05-12');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (3, 'Emily Blair', 'wcastro@yahoo.com', '2021-03-24');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (4, 'Martin Harris', 'qgrimes@gmail.com', '2022-06-15');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (5, 'Kimberly Smith', 'salazarmaria@yahoo.com', '2023-11-14');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (6, 'Frederick Harrell', 'johnponce@west.net', '2023-09-23');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (7, 'Mrs. Elizabeth Carter MD', 'tamaramorrison@hotmail.com', '2023-04-10');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (8, 'Brandon Yates', 'kellylopez@gmail.com', '2022-09-14');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (9, 'William Green', 'sheltondavid@mclean.net', '2023-09-04');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (10, 'Sara Warren', 'pattylawrence@riley-hayes.com', '2023-01-04');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (11, 'Louis Tucker', 'johndennis@gmail.com', '2022-03-24');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (12, 'Jacqueline Jackson', 'garciadustin@hotmail.com', '2023-10-31');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (13, 'Robert Walters', 'martinezjacob@wilson.com', '2021-10-13');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (14, 'Alex Woodward', 'mendozajessica@giles.net', '2022-08-01');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (15, 'Brian Green', 'lucasmichael@brown.com', '2021-10-14');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (16, 'Melissa Myers', 'rebecca79@gmail.com', '2021-07-14');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (17, 'Christina Saunders', 'matthewking@morse.biz', '2022-05-29');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (18, 'Shelly Lowery', 'qmonroe@gmail.com', '2023-12-27');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (19, 'Alexandria Harmon', 'stephensdennis@yahoo.com', '2021-10-28');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (20, 'Dwayne Howard', 'paul61@wheeler.com', '2022-09-28');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (21, 'Daniel West', 'moralesjacqueline@yahoo.com', '2021-07-22');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (22, 'Michelle Martin', 'jacqueline78@odonnell-munoz.com', '2021-06-01');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (23, 'Kathleen Collins', 'lambnancy@yahoo.com', '2022-11-08');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (24, 'Zachary Schultz', 'valeriemorales@butler.com', '2023-08-25');
INSERT INTO students (student_id, name, email, enrollment_date) VALUES (25, 'Miss Lisa Lee', 'joshua21@nash-sanders.com', '2021-07-26');
```

### `courses`
```sql
INSERT INTO courses (course_id, course_name, credits) VALUES (1, 'Ameliorated even-keeled knowledge user', 4);
INSERT INTO courses (course_id, course_name, credits) VALUES (2, 'Customizable eco-centric challenge', 5);
INSERT INTO courses (course_id, course_name, credits) VALUES (3, 'Streamlined multi-state projection', 4);
INSERT INTO courses (course_id, course_name, credits) VALUES (4, 'Stand-alone grid-enabled budgetary management', 6);
INSERT INTO courses (course_id, course_name, credits) VALUES (5, 'Distributed even-keeled adapter', 3);
INSERT INTO courses (course_id, course_name, credits) VALUES (6, 'Balanced 6thgeneration database', 6);
INSERT INTO courses (course_id, course_name, credits) VALUES (7, 'Synergized empowering open architecture', 5);
INSERT INTO courses (course_id, course_name, credits) VALUES (8, 'Intuitive high-level open system', 5);
INSERT INTO courses (course_id, course_name, credits) VALUES (9, 'Balanced value-added standardization', 6);
INSERT INTO courses (course_id, course_name, credits) VALUES (10, 'Robust solution-oriented methodology', 4);
INSERT INTO courses (course_id, course_name, credits) VALUES (11, 'Universal secondary knowledgebase', 2);
INSERT INTO courses (course_id, course_name, credits) VALUES (12, 'Sharable intermediate hub', 6);
INSERT INTO courses (course_id, course_name, credits) VALUES (13, 'Public-key context-sensitive database', 2);
INSERT INTO courses (course_id, course_name, credits) VALUES (14, 'Multi-tiered optimizing frame', 2);
INSERT INTO courses (course_id, course_name, credits) VALUES (15, 'Advanced client-driven collaboration', 5);
INSERT INTO courses (course_id, course_name, credits) VALUES (16, 'Future-proofed full-range Graphical User Interface', 2);
INSERT INTO courses (course_id, course_name, credits) VALUES (17, 'Multi-layered transitional array', 6);
INSERT INTO courses (course_id, course_name, credits) VALUES (18, 'Mandatory zero-defect process improvement', 5);
INSERT INTO courses (course_id, course_name, credits) VALUES (19, 'Automated 6thgeneration flexibility', 4);
INSERT INTO courses (course_id, course_name, credits) VALUES (20, 'Diverse coherent paradigm', 3);
INSERT INTO courses (course_id, course_name, credits) VALUES (21, 'Implemented high-level infrastructure', 4);
INSERT INTO courses (course_id, course_name, credits) VALUES (22, 'Reactive clear-thinking frame', 2);
INSERT INTO courses (course_id, course_name, credits) VALUES (23, 'Customizable mission-critical superstructure', 3);
INSERT INTO courses (course_id, course_name, credits) VALUES (24, 'Front-line actuating function', 6);
INSERT INTO courses (course_id, course_name, credits) VALUES (25, 'Enhanced multi-state superstructure', 3);
```

### `enrollments`
```sql
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (1, 8, 5, '2023-07-07');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (2, 3, 3, '2022-10-18');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (3, 17, 16, '2021-08-12');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (4, 10, 18, '2022-08-20');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (5, 23, 4, '2022-11-13');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (6, 18, 7, '2022-08-13');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (7, 15, 3, '2023-02-28');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (8, 11, 19, '2022-05-11');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (9, 10, 6, '2022-01-23');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (10, 6, 2, '2022-06-17');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (11, 16, 3, '2021-07-03');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (12, 22, 25, '2021-09-24');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (13, 5, 2, '2021-06-14');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (14, 23, 18, '2023-03-13');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (15, 23, 17, '2022-07-19');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (16, 17, 8, '2022-03-17');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (17, 22, 19, '2023-05-09');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (18, 19, 9, '2023-07-12');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (19, 16, 22, '2023-01-02');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (20, 3, 11, '2021-08-25');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (21, 16, 19, '2022-11-18');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (22, 7, 8, '2021-02-03');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (23, 24, 9, '2021-08-28');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (24, 23, 8, '2023-02-01');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date) VALUES (25, 6, 11, '2023-05-23');
```

## 🟧 Oracle Inserts

### `COURSE_ASSIGNMENTS`
```sql
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (1, 103, 'Synthesize cross-platform solutions', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (2, 104, 'Revolutionize plug-and-play models', 'Spring 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (3, 103, 'Drive Dot-Com Infrastructures', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (4, 104, 'Seize Intuitive Initiatives', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (5, 105, 'Seize Proactive Convergence', 'Fall 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (6, 106, 'Seize Virtual Synergies', 'Spring 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (7, 107, 'E-Enable Bleeding-Edge Relationships', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (8, 108, 'Optimize B2B E-Tailers', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (9, 109, 'Implement Best-Of-Breed Web Services', 'Spring 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (10, 110, 'Innovate 24/7 Synergies', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (11, 111, 'Envisioneer Out-Of-The-Box Web-Readiness', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (12, 112, 'Re-Contextualize Bleeding-Edge Eyeballs', 'Fall 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (13, 113, 'Reinvent Ubiquitous Initiatives', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (14, 114, 'Syndicate Cross-Media Portals', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (15, 115, 'Enable Proactive E-Tailers', 'Fall 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (16, 116, 'Disintermediate Open-Source Info-Mediaries', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (17, 117, 'Envisioneer Distributed Schemas', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (18, 118, 'Whiteboard World-Class Roi', 'Fall 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (19, 119, 'Benchmark Strategic Platforms', 'Fall 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (20, 120, 'Incubate Extensible Communities', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (21, 121, 'Synergize B2B Channels', 'Summer 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (22, 122, 'Exploit Magnetic Vortals', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (23, 123, 'Deliver Interactive Action-Items', 'Fall 2023');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (24, 124, 'Engineer Viral Technologies', 'Fall 2022');
INSERT INTO COURSE_ASSIGNMENTS (ASSIGNMENT_ID, PROFESSOR_ID, COURSE_NAME, SEMESTER) VALUES (25, 100, 'Disintermediate Next-Generation Web Services', 'Fall 2023');
```

### `PROFESSORS (basic)`
```sql
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (100, 'Dr. Emily Parker', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (101, 'Dr. John Miller', 'Mathematics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (102, 'Carlos Smith', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (103, 'Benjamin Fisher', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (104, 'Natalie Thomas', 'Physics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (105, 'Mark Miller', 'Physics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (106, 'Jacob Rush', 'Mathematics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (107, 'Jason Butler', 'Mathematics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (108, 'Erica Harris', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (109, 'John Clements', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (110, 'Destiny Grant', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (111, 'Rebecca Griffin', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (112, 'Randall Reynolds', 'Mathematics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (113, 'Jesse Giles', 'Mathematics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (114, 'Joel Walsh', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (115, 'Mr. Aaron Hale', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (116, 'Aimee Evans', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (117, 'Lori Gardner', 'Computer Science');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (118, 'Michael Ruiz', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (119, 'Olivia Hall', 'Physics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (120, 'Diana Riggs', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (121, 'Stephen Williams', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (122, 'Joseph Perkins', 'Mathematics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (123, 'Brian King', 'Economics');
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, DEPARTMENT) VALUES (124, 'Paul Stout', 'Computer Science');
```

### `DEPARTMENTS`
```sql
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (1, 'Miller, Jones and Baker', 'Wilson Wall');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (2, 'Macdonald and Sons', 'Robert Highway');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (3, 'Meyer-Berry', 'Amanda Loop');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (4, 'Stephens, Figueroa and Strong', 'Carter Landing');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (5, 'Fuller, Moore and Terry', 'Morales Mountain');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (6, 'Castro LLC', 'Chen Summit');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (7, 'Robinson-Burns', 'Vasquez Circle');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (8, 'Evans-Mcgee', 'Paige Forge');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (9, 'Kelly Group', 'Meghan Cliff');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (10, 'Camacho, Parks and Harmon', 'Smith Canyon');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (11, 'Oliver LLC', 'Acosta Forks');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (12, 'Walton LLC', 'Daniel Mount');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (13, 'Rivera, Jackson and Fisher', 'Hernandez Station');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (14, 'Warren and Sons', 'Renee Mills');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (15, 'Clarke-Price', 'Price Forges');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (16, 'Gonzales and Sons', 'Rebecca Bypass');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (17, 'Schultz and Sons', 'Brown Route');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (18, 'Thompson, Bishop and Salazar', 'Wise Knoll');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (19, 'Ellis-Welch', 'Carpenter Overpass');
INSERT INTO DEPARTMENTS (DEPT_ID, NAME, BUILDING) VALUES (20, 'Padilla-Lewis', 'Williams Center');
```

### `CLASSROOMS`
```sql
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (1, 'Michael Highway', '288', 40);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (2, 'Donald Turnpike', '233', 75);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (3, 'Becker Rest', '497', 40);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (4, 'Grant Forges', '320', 40);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (5, 'Lee Rest', '283', 30);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (6, 'Catherine Corner', '132', 100);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (7, 'Morris Motorway', '114', 75);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (8, 'Scott Pike', '331', 100);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (9, 'James Common', '203', 30);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (10, 'Molly Key', '354', 60);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (11, 'Mary Glen', '231', 40);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (12, 'Collins Wall', '428', 30);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (13, 'Scott Key', '210', 75);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (14, 'Bradley Plaza', '174', 30);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (15, 'Albert Park', '201', 60);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (16, 'Williams Valleys', '293', 50);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (17, 'Werner Mount', '379', 40);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (18, 'Wilson Common', '153', 75);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (19, 'Corey Track', '349', 40);
INSERT INTO CLASSROOMS (ROOM_ID, BUILDING, ROOM_NUMBER, CAPACITY) VALUES (20, 'Robert Forest', '388', 60);
```

### `PROFESSORS (with FK)`
```sql
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (201, 'Billy Simmons', 'haleyjohn@gmail.com', 14);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (202, 'Seth Michael', 'srodriguez@hotmail.com', 17);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (203, 'Christina Phillips', 'qherrera@yahoo.com', 16);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (204, 'Bryan Logan', 'jessicawright@hobbs-osborn.com', 11);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (205, 'Kaylee Trevino', 'hbrewer@cunningham.net', 16);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (206, 'Connie Decker', 'holmesemily@brooks.com', 16);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (207, 'Breanna Smith', 'brenda02@yahoo.com', 7);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (208, 'Christopher Esparza', 'kimberlyhampton@saunders.com', 18);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (209, 'Olivia Gomez', 'glester@flowers.info', 20);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (210, 'Tyler Peters', 'vlamb@payne-padilla.com', 8);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (211, 'Larry Warner', 'patrick03@gmail.com', 1);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (212, 'Paul Wright', 'jordanpowers@yahoo.com', 11);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (213, 'Kenneth Brown', 'andrew00@williams.com', 11);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (214, 'Antonio Stanton', 'patriciarobinson@yahoo.com', 11);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (215, 'Eric Banks', 'qsmith@hotmail.com', 2);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (216, 'Nancy Parks', 'cunninghamdavid@yahoo.com', 17);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (217, 'Jonathan Howell', 'riveramary@wright.com', 5);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (218, 'Sara Hoffman', 'mpennington@oliver.com', 9);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (219, 'Amanda Peterson', 'garrettpamela@yahoo.com', 20);
INSERT INTO PROFESSORS (PROFESSOR_ID, NAME, EMAIL, DEPT_ID) VALUES (220, 'Edward Hernandez', 'francis65@pratt-blackburn.com', 5);
```
