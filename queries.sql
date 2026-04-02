SELECT u.first_name, u.last_name, ct.translated_title
FROM users u
JOIN enrollments e ON u.user_id = e.user_id
JOIN course_translations ct ON e.course_id = ct.course_id
WHERE ct.language_code = 'de' AND u.role = 'student';


SELECT ct.translated_title, COUNT(e.enrollment_id) as total_students
FROM course_translations ct
LEFT JOIN enrollments e ON ct.course_id = e.course_id
WHERE ct.language_code = 'en'
GROUP BY ct.translated_title
ORDER BY total_students DESC;
