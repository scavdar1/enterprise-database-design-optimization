CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(20) CHECK (role IN ('student', 'instructor', 'admin'))
);
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_title VARCHAR(100) NOT NULL,
    credits INT DEFAULT 3
);

CREATE TABLE course_translations (
    translation_id SERIAL PRIMARY KEY,
    course_id INT REFERENCES courses(course_id),
    language_code CHAR(2), -- 'en', 'de', 'tr'
    translated_title VARCHAR(150),
    translated_description TEXT
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_course_translations ON course_translations(course_id, language_code);
