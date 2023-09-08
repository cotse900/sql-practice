--marks 75
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), ID ASC
--report
SELECT name, grade, marks
FROM 
(
    SELECT students.name, grades.grade, students.marks
    FROM students
    JOIN grades ON students.marks BETWEEN grades.min_mark AND grades.max_mark
    WHERE grades.grade >= 8
    UNION ALL
    SELECT 'NULL' AS name, grades.grade, students.marks
    FROM students
    JOIN grades ON students.marks BETWEEN grades.min_mark AND grades.max_mark
    WHERE grades.grade < 8
) AS results
ORDER BY grade DESC, name, marks ASC;
