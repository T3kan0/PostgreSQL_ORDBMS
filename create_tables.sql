-- Creating a relational database management system for a tutorial programme data.

-- tutors table: tutors facillitating the tutorial sessions.
CREATE TABLE tutors (
	tutor_id BIGINT PRIMARY KEY NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

-- modules table: modules or subjects being facillitated the tutorial for.
CREATE TABLE modules (
    module_id BIGSERIAL PRIMARY KEY,
    subject CHAR(4) NOT NULL,
    catalog_nbr CHAR(4) NOT NULL CHECK (catalog_nbr ~ '^[0-9]{4}$'),
    UNIQUE (subject, catalog_nbr)  -- prevent duplicates
);

-- students table: students that attend tutorial sessions.
CREATE TABLE students (
	student_id BIGINT PRIMARY KEY NOT NULL
);

-- sessions table: tutorial sessions details.
CREATE TABLE sessions (
    session_id BIGSERIAL PRIMARY KEY,
    tutor_id BIGINT NOT NULL REFERENCES tutors(tutor_id),
    module_id BIGINT NOT NULL REFERENCES modules(module_id),
    student_id BIGINT NOT NULL REFERENCES students(student_id),
    session_date DATE NOT NULL,
    session_location VARCHAR(100) NOT NULL,
	tutor_type VARCHAR(3) NOT NULL,
	acad_group VARCHAR(100) NOT NULL,
	term CHAR(4) NOT NULL CHECK (term ~ '^[0-9]{4}$'),
	campus VARCHAR(100) NOT NULL,
	hrs_earned NUMERIC(7,6) NOT NULL,
	career VARCHAR(100),
	seq_nbr INT NOT NULL,
	class_nbr BIGINT NOT NULL,
    -- prevent duplicate session entries for the same student in same module at the same date
    UNIQUE (student_id, module_id, tutor_id, session_date) -- allows the same student to attend two different tutors’ sessions for the same module on the same date.
);




