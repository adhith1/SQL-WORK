INSERT INTO students (id, name, course, score, email, phone, city, bonus_points) VALUES
(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

SELECT course ,count(course) AS total_students
FROM students
GROUP BY course;

select couse, AVG(score) as average_score
from students 
group by course
HAVING AVG(score) > 80;

SELECT name,score FROM students
WHERE city IN ('Chennai','Mumbai');

SELECT * FROM students
WHERE bonus_points IS NULL;

SELECT name FROM students WHERE  city = 'chennai'
UNION 
SELECT name FROM students WHERE city = 'mumbai';

