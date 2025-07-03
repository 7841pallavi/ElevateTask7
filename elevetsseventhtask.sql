CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class VARCHAR(20)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students VALUES (1, 'Pallavi', '10A'), (2, 'Rahul', '10A');

INSERT INTO marks VALUES 
(1, 1, 'Math', 85),
(2, 1, 'Science', 90),
(3, 2, 'Math', 78),
(4, 2, 'Science', 88);

CREATE VIEW student_scores AS
SELECT s.name, s.class, m.subject, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id;

SELECT * FROM student_scores;

