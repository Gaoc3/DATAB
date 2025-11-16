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

-- استرجاع أسماء الطلاب الذين أعمارهم أكبر من متوسط أعمار الطلاب
SELECT name
FROM students
WHERE age > (SELECT AVG(age) FROM students);

-- 2. Views
-- للطلاب الذين أعمارهم أكبر من 20
CREATE VIEW older_student AS
SELECT id, name, age
FROM students
WHERE age > 20;

-- عرض محتوى الـ view
SELECT * FROM older_student;

-- 3. Indexes
-- إنشاء فهرس للبحث على عمود الاسم
CREATE INDEX enas ON students(name);

-- حذف الفهرس
DROP INDEX enas ON students;







-- إنشاء جدول الطلاب
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- إدخال بيانات تجريبية
INSERT INTO students (id, name, age) VALUES
(1, 'Alice', 19),
(2, 'Bob', 21),
(3, 'Charlie', 18),
(4, 'David', 22),
(5, 'Eli', 20),
(6, 'Mila', 23),
(7, 'Nora', 17),
(8, 'Olivia', 24);

-- 1. WHERE: استرجاع الطلاب الذين أعمارهم أكبر من 20
SELECT * FROM students
WHERE age > 20;

-- 2. BETWEEN: استرجاع الطلاب الذين أعمارهم بين 18 و 25
SELECT name, age FROM students
WHERE age BETWEEN 18 AND 25;

-- 3. LIKE: البحث عن أسماء الطلاب التي تبدأ بـ A
SELECT name FROM students
WHERE name LIKE 'A%';

-- البحث في الحروف الثانية والثالثة "li" (أي أسماء تحتوي على li)
SELECT name FROM students
WHERE name LIKE '%li%';

-- 4. IN: استرجاع الطلاب الذين أعمارهم 18 أو 20 أو 25
SELECT name, age FROM students
WHERE age IN (18, 20, 25);
