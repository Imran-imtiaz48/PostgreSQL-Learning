-- View all students
SELECT * 
FROM students;

-- Count of students and average age by country
SELECT 
    country, 
    COUNT(*) AS student_count, 
    AVG(age) AS avg_age
FROM students
GROUP BY country
ORDER BY country;

-- Filter groups using HAVING: Only countries with average age above 20.60
SELECT 
    country, 
    AVG(age) AS avg_age
FROM students
GROUP BY country
HAVING AVG(age) > 20.60
ORDER BY avg_age DESC;

-- Count of students born in each year
SELECT 
    EXTRACT(YEAR FROM dob) AS birth_year, 
    COUNT(*) AS num_students
FROM students
GROUP BY birth_year
ORDER BY birth_year;
