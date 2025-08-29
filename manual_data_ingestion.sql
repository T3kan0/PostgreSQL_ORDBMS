-- manually populating tables in the ORDBMS

-- populate tutor table
INSERT INTO tutors (tutor_id,
					first_name,
					last_name)
VALUES (2024829919,
		'Tekano',
		'Mbonani');

-- populate modules table
INSERT INTO modules (subject,
					catalog_nbr)
VALUES ('EDUB',
		2714);

-- populate students table
INSERT INTO students (student_id)
VALUES (890030)

-- populate sessions table
INSERT INTO sessions (session_date,
					session_location,
					tutor_type,
					acad_group,
					term,
					campus,
					hrs_earned,
					career,
					seq_nbr,
					class_nbr,
					student_id,
					module_id,
					tutor_id)
VALUES (DATE '2025-02-27',
		'QWAQWA',
		'NOR',
		'MEDU',
		'2251',
		'QWA',
		1.000000,
		'UGRD',
		1,
		5011,
		890030,
		1,
		2024829919);