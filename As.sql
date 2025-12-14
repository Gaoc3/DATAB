DROP DATABASE IF EXISTS lab_db;
CREATE DATABASE lab_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE lab_db;

DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
  ID INT PRIMARY KEY,
  Name VARCHAR(30),
  Address VARCHAR(100)
) ENGINE=InnoDB;

INSERT INTO Students (ID, Name, Address) VALUES
(1, 'Ali', 'Mosul'),
(2, 'Sara', 'Baghdad'),
(3, 'Omar', 'Basra');

SHOW TABLE STATUS LIKE 'Students';

DESCRIBE Students;
SELECT * FROM Students;

UPDATE Students
SET Address = 'Erbil City, Kurdistan Region'
WHERE ID = 2;

DELETE FROM Students
WHERE ID = 3;

SHOW TABLE STATUS LIKE 'Students';

DESCRIBE Students;
SELECT * FROM Students;
