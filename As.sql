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

UPDATE Students
SET Address = 'Erbil City, Kurdistan Region'
WHERE ID = 2;

DELETE FROM Students
WHERE ID = 3;

SHOW TABLE STATUS LIKE 'Students';
