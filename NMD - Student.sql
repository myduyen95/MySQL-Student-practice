# STUDENT EXAMPLES
CREATE TABLE student
(
	student_id INT PRIMARY KEY,  #Can set primary key like this
    `name` VARCHAR(30) NOT NULL, # NOT NULL wont allow this column to be null, 
    major VARCHAR(25)
);

CREATE TABLE student
(
	student_id INT,
    `name` VARCHAR(30) UNIQUE, # UNIQUE: this field must be unique on every row
    major VARCHAR(25),
    PRIMARY KEY(student_id)		#Can set primary key like this
);

CREATE TABLE student
(
	student_id INT,
    `name` VARCHAR(30), 
    major VARCHAR(25) DEFAULT 'Undecided', # DEFAULT: set default value if this field is blank
    PRIMARY KEY(student_id)		#Can set primary key like this
);


DESCRIBE student;

SELECT * FROM student; 

DROP TABLE student;

ALTER TABLE student
	ADD  GPA DECIMAL(3, 2);	#GPA has 3 digits (except .) and 2 digits after decimal point
    
ALTER TABLE student
	DROP COLUMN GPA;
    
INSERT INTO student
	VALUES (1, 'Jack', 'Biology'),
		   (2, 'Kate', 'Sociology'), 
           (3, 'Claire', 'English'),
           (4, 'Jack', 'Biology');
           
INSERT INTO student (student_id, `name`)
	VALUES (5, 'Mike');
   
SELECT * FROM student;     

DROP TABLE student;

CREATE TABLE student
(
	student_id INT AUTO_INCREMENT,	# Auto increase this number
    `name` VARCHAR(30), 
    major VARCHAR(25), 
    PRIMARY KEY(student_id)		#Can set primary key like this
);

INSERT INTO student (`name`, major)
	VALUES ('Jack', 'Biology'),
		   ('Kate', 'Sociology'), 
           ('Claire', 'English'),
           ('Jack', 'Biology'),
           ('Mike', NULL);
           
SELECT * FROM student;    
   
UPDATE student
	SET major = 'Bio'
    WHERE major = 'Biology';
    
UPDATE student
	SET major = 'Computer Science'
    WHERE student_id = 5;

UPDATE student
	SET `name` = 'Mickey', major = 'Undecided'
    WHERE student_id = 5;		# If NOT including WHERE condition, it will update for all records in the table
    
DELETE FROM student;	#Delete all rows in the table

DELETE FROM student 
WHERE student_id = 10;

SELECT *
FROM student
ORDER BY `name`
LIMIT 3;

SELECT *
FROM student
WHERE major LIKE 'Bio%';

SELECT *
FROM student
WHERE `name` IN ('Claire', 'Mike');

DROP TABLE student;

