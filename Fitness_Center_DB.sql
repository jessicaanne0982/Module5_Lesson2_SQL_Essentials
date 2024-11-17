CREATE DATABASE fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: Adding members and workout sessions to the tables
INSERT INTO Members(id, name, age)
VALUES (1, 'Jane Doe', 25),
		(2, 'John Smith', 28),
        (3, 'Suzie Summers', 25),
        (4, 'Jack Henry', 34),
        (5, 'Connie White', 32);

SELECT * FROM Members;

INSERT INTO WorkoutSessions(session_id, member_id, session_date, session_time, activity)
VALUES (1, 2, '2024-11-15', '10:30 am', 'TRX'),
		(2, 1, '2024-11-17', '07:30 am', 'Spin'),
		(3, 5, '2024-11-09', '12:00 pm', 'Yoga'),
        (4, 4, '2024-11-18', '09:00 am', 'Pilates'),
        (5, 3, '2024-11-11', '4:30 pm', 'Zumba');
        
SELECT * FROM WorkoutSessions;

-- Task 2: Changing Jane Doe's workout session from morning to night
UPDATE WorkoutSessions
SET session_time = '6:30 pm'
WHERE member_id = 1;

SELECT * FROM WorkoutSessions;

-- Task 3: Remove John Smith from the database by first deleting workout sessions then deleting his record
DELETE FROM WorkoutSessions
WHERE member_id = 2;

DELETE FROM Members
WHERE id = 2;

SELECT * FROM Members;


