USE devcamp_sql_project;

-- Group students by the courses that they are enrolled in:

SELECT students.students_name, courses.courses_name
FROM students
JOIN courses
ON students.students_id = courses.courses_students_id
ORDER BY courses.courses_name;

-- Create a summary report of courses and their average grades, 
-- sorted by the most challenging course (course with the lowest average grade) 
-- to the easiest course:

SELECT AVG(grades.grades_points), courses.courses_name
FROM courses
JOIN grades
ON courses.courses_id = grades.grades_courses_id
GROUP BY courses.courses_name;

-- The top grades for each student: 

SELECT students_id, students_name, MAX(grades_points)
FROM grades
INNER JOIN students 
ON grades.grades_students_id = students.students_id
GROUP BY grades_students_id;

-- script to get the AVG grade given by each professor

SELECT professors_name , avg(grades_points)
FROM grades
INNER JOIN professors
ON grades_professors_id = professors.professors_id
GROUP BY professors_id;

-- script to populate grades table: 

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (191, 1, 7, 7, 100);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (192, 2, 7, 7, 75);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (193, 3, 7, 7, 74);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (194, 4, 7, 7, 73);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (195, 5, 7, 7, 72);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (196, 6, 7, 7, 71);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (197, 7, 7, 7, 70);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (198, 8, 7, 7, 76);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (199, 9, 7, 7, 77);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (200, 10, 7, 7, 78);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (201, 11, 7, 7, 79);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (202, 12, 7, 7, 80);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (203, 13, 7, 7, 81);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (204, 14, 7, 7, 82);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (205, 15, 7, 7, 83);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (206, 16, 7, 7, 84);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (207, 17, 7, 7, 85);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (208, 18, 7, 7, 86);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (209, 19, 7, 7, 87);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (210, 20, 7, 7, 88);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (211, 21, 7, 7, 89);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (212, 22, 7, 7, 90);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (213, 23, 7, 7, 91);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (214, 24, 7, 7, 92);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (215, 25, 7, 7, 93);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (216, 26, 7, 7, 94);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (217, 27, 7, 7, 95);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (218, 28, 7, 7, 96);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (219, 29, 7, 7, 97);

INSERT INTO grades (grades_id, grades_students_id, grades_courses_id, grades_professors_id, grades_points)
VALUES (220, 30, 7, 7, 98);

SELECT * 
FROM grades;

-- script for populating courses table:

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (1, 1, "Course1", 1);

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (2, 2, "Course2", 2);

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (3, 3, "Course3", 3);

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (4, 4, "Course4", 4);

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (5, 5, "Course5", 5);

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (6, 6, "Course6", 6);

INSERT INTO courses(courses_id, courses_students_id, courses_name, courses_professors_id)
VALUE (7, 7, "Course7", 7);

SELECT *
FROM courses;

-- script for populating professors table:

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 1, 1, "tested");

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 2, 1, "Kelsey");

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 3, 3, "Charlie");

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 4, 4, "Skippy");

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 5, 5, "Prue");

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 6, 6, "Piper");

INSERT INTO professors(professors_id, professors_students_id, professors_name)
VALUE ( 7, 7, "Phoebe");

SELECT *
FROM professors;

-- script for populating student data:

DELIMITER $$
DROP PROCEDURE IF EXISTS student_data$$
CREATE PROCEDURE student_data()
BEGIN
  DECLARE i INT default 1;
  WHILE i <= 30 DO
    INSERT INTO students (students_name)
    VALUES (CONCAT("Student", i));
    SET i = i + 1;
  END WHILE;
END $$
DELIMITER ;
CALL student_data();
DROP PROCEDURE student_data;

SELECT *
FROM students;