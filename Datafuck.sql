CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

INSERT INTO students (id, name, age) VALUES
(1, 'Alice', 19),
(2, 'Bob', 21),
(3, 'Charlie', 18),
(4, 'David', 22),
(5, 'Eli', 20),
(6, 'Mila', 23),
(7, 'Nora', 23),
(8, 'Olivia', 24);

SELECT name
FROM students
WHERE age > (SELECT AVG(age) FROM students);

CREATE VIEW older_student AS
SELECT id, name, age
FROM students
WHERE age > 20;

SELECT * FROM older_student;

CREATE INDEX enas ON students(name);

DROP INDEX enas ON students;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

INSERT INTO students (id, name, age) VALUES
(1, 'Alice', 19),
(2, 'Bob', 21),
(3, 'Charlie', 18),
(4, 'David', 22),
(5, 'Eli', 20),
(6, 'Mila', 23),
(7, 'Nora', 17),
(8, 'Olivia', 24);

SELECT * FROM students
WHERE age > 20;

SELECT name, age FROM students
WHERE age BETWEEN 18 AND 25;

SELECT name FROM students
WHERE name LIKE 'A%';

SELECT name FROM students
WHERE name LIKE '%li%';

SELECT name, age FROM students
WHERE age IN (18, 20, 25);
