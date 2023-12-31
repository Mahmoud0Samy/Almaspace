-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it
CREATE DATABASE `Alma`;

USE `Alma`;

CREATE TABLE `students`(
    `student_id` VARCHAR(16),
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `enrolled_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `major` VARCHAR(64) NOT NULL,
    `date_of_birth` DATE NOT NULL,
    `gender` ENUM('Male', 'Female') NOT NULL,
    `address` VARCHAR(128) NOT NULL,
    `phone_number` VARCHAR(32) NOT NULL,
    `email` VARCHAR(64),
    `ssn` VARCHAR(32) NOT NULL,
    `country` VARCHAR(32) NOT NULL DEFAULT 'Egypt',
    `status` ENUM('Active', 'Archived') NOT NULL DEFAULT 'Active',
    PRIMARY KEY(`student_id`)
);

CREATE TABLE `teachers`(
    `teacher_id` VARCHAR(16),
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `join_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `major` VARCHAR(64) NOT NULL,
    `date_of_birth` DATE NOT NULL,
    `gender` ENUM('Male', 'Female') NOT NULL,
    `address` VARCHAR(128) NOT NULL,
    `phone_number` VARCHAR(32) NOT NULL,
    `email` VARCHAR(64),
    `ssn` VARCHAR(32) NOT NULL,
    `country` VARCHAR(32) NOT NULL DEFAULT 'Egypt',
    `status` ENUM('Active', 'Archived') NOT NULL DEFAULT 'Active',
    PRIMARY KEY(`teacher_id`)
);

CREATE TABLE `users`(
    `user_id` INT AUTO_INCREMENT,
    `username` VARCHAR(64) NOT NULL,
    `password` VARCHAR(64) NOT NULL,
    `person_id` VARCHAR(16) NOT NULL,
    `role` ENUM('Student', 'Teacher') NOT NULL,
    PRIMARY KEY(`user_id`)
);

CREATE TABLE `messages`(
    `message_id` INT AUTO_INCREMENT,
    `sender_id` INT NOT NULL,
    `receiver_id` INT NOT NULL,
    `send_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `message` VARCHAR(256) NOT NULL,
    `attachement` BLOB,
    PRIMARY KEY(`message_id`),
    FOREIGN KEY(`sender_id`) REFERENCES `users`(`user_id`),
    FOREIGN KEY(`receiver_id`) REFERENCES `users`(`user_id`)
);

CREATE TABLE `courses`(
    `course_id` INT AUTO_INCREMENT,
    `course_code` VARCHAR(32) NOT NULL,
    `course_name` VARCHAR(64) NOT NULL,
    `credit_hours` INT NOT NULL,
    `description` VARCHAR(128),
    `prerequisite` VARCHAR(32),
    `semester` ENUM('Fall', 'Spring', 'Summer') NOT NULL,
    `year` VARCHAR(16) NOT NULL,
    `status` ENUM('Active', 'Archived') NOT NULL DEFAULT 'Active',
    PRIMARY KEY(`course_id`)
);

CREATE TABLE `tutor`(
    `tutor_id` INT AUTO_INCREMENT,
    `teacher_id` VARCHAR(16) NOT NULL,
    `course_id` INT NOT NULL,
    PRIMARY KEY(`tutor_id`),
    FOREIGN KEY(`teacher_id`) REFERENCES `teachers`(`teacher_id`),
    FOREIGN KEY(`course_id`) REFERENCES `courses`(`course_id`)
);

CREATE TABLE `enrolled`(
    `enroll_id` INT AUTO_INCREMENT,
    `student_id` VARCHAR(16) NOT NULL,
    `course_id` INT NOT NULL,
    PRIMARY KEY(`enroll_id`),
    FOREIGN KEY(`student_id`) REFERENCES `students`(`student_id`),
    FOREIGN KEY(`course_id`) REFERENCES `courses`(`course_id`)
);

CREATE TABLE `quizes`(
    `quiz_id` INT AUTO_INCREMENT,
    `user_id` INT NOT NULL --CHECK(`user_id` IN (SELECT `user_id` FROM `users` WHERE `role` = 'Teacher')),
    `course_id` INT NOT NULL --CHECK(`course_id` IN (SELECT `course_id` FROM `courses` WHERE `status` = 'Active')),
    `status` ENUM('Active', 'Archived') NOT NULL DEFAULT 'Active',
    `quiz_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `duration_minutes` INT NOT NULL DEFAULT 30,
    PRIMARY KEY(`quiz_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`user_id`),
    FOREIGN KEY(`course_id`) REFERENCES `courses`(`course_id`)
);

CREATE TABLE `questions`(
    `question_id` INT AUTO_INCREMENT,
    `quiz_id` INT NOT NULL CHECK (`quiz_id` IN (SELECT `quiz_id` FROM `quizes` WHERE `status` = 'Active')),
    `question` VARCHAR(256) NOT NULL,
    `correct_answer` VARCHAR(256) NOT NULL,
    `wrong_answer1` VARCHAR(256),
    `wrong_answer2` VARCHAR(256),
    `wrong_answer3` VARCHAR(256),
    `attachement` BLOB,
    PRIMARY KEY(`question_id`),
    FOREIGN KEY(`quiz_id`) REFERENCES `quizes`(`quiz_id`)
);

CREATE TABLE `grades`(
    `grade_id` INT AUTO_INCREMENT,
    `quiz_id` INT NOT NULL,
    `student_id` varchar(16) NOT NULL,
    `grade` INT NOT NULL,
    `minutes_left` INT NOT NULL,
    PRIMARY KEY(`grade_id`),
    FOREIGN KEY(`quiz_id`) REFERENCES `quizes`(`quiz_id`),
    FOREIGN KEY(`student_id`) REFERENCES `students`(`student_id`)
);

CREATE TABLE `posts`(
    `post_id` INT AUTO_INCREMENT,
    `user_id` INT NOT NULL --CHECK(`user_id` IN (SELECT `user_id` FROM `users` WHERE `role` = 'Teacher')),
    `course_id` INT NOT NULL --CHECK(`course_id` IN (SELECT `course_id` FROM `courses` WHERE `status` = 'Active')),
    `post_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `status` ENUM('Active', 'Archived') NOT NULL DEFAULT 'Active',
    `post_text` VARCHAR(256) NOT NULL,
    `attachement` BLOB,
    PRIMARY KEY(`post_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`user_id`),
    FOREIGN KEY(`course_id`) REFERENCES `courses`(`course_id`)
);

CREATE TABLE `comments`(
    `comment_id` INT AUTO_INCREMENT,
    `user_id` INT NOT NULL --CHECK(`user_id` IN (SELECT `user_id` FROM `users` WHERE `status` = 'Active')),
    `post_id` INT NOT NULL --CHECK(`post_id` IN (SELECT `post_id` FROM `posts` WHERE `status` = 'Active')),
    `comment_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `comment_text` VARCHAR(256) NOT NULL,
    PRIMARY KEY(`comment_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`user_id`),
    FOREIGN KEY(`post_id`) REFERENCES `posts`(`post_id`)
);

--This index will be mainly used for messages and comments to display the first name of a student
CREATE INDEX `students_names` ON `students` (`first_name`);

--These indexes will be mainly used for check constraints & reads
CREATE INDEX `course_status` ON `courses` (`status`);
CREATE INDEX `course_name` ON `courses` (`course_name`);

--These indexes will be mainly used for signing in
CREATE INDEX `userslog` ON `users` (`username`);
CREATE INDEX `userslog` ON `users` (`password`);
--These indexes will be mainly used for check constraints
CREATE INDEX `usersrole` ON `users` (`role`);


--A stored Procedure for login in which we input username and password and output if login was successful or not
DELIMITER //

CREATE PROCEDURE `LoginUser`(
    IN `username_input` VARCHAR(64),
    IN `password_input` VARCHAR(64),
    OUT `login_success` BOOLEAN
)
BEGIN
    DECLARE `user_exists` BOOLEAN DEFAULT FALSE;
    --Check if the user exists with the provided username and password
    SELECT COUNT(*) INTO `user_exists`
    FROM `users`
    WHERE `username` = `username_input` AND `password` = `password_input`;
    --Set the output parameter based on whether the login was successful
    IF `user_exists` THEN
        SET `login_success` := TRUE;
    ELSE
        SET `login_success` := FALSE;
    END IF;
END //

DELIMITER ;

--A stored procedure for sending a message
DELIMITER //

CREATE PROCEDURE `SendMessage`(
    IN `sender_id_input` INT,
    IN `receiver_id_input` INT,
    IN `message_text_input` VARCHAR(256),
    IN `attachment_input` BLOB
)
BEGIN
    INSERT INTO `MESSAGES` (`sender_id`, `receiver_id`, `message`, `attachment`)
    VALUES (`sender_id_input`, `receiver_id_input`, `message_text_input`, `attachment_input`);
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE `CreatePost`(
    IN `user_id_input` INT,
    IN `course_id_input` INT,
    IN `post_text_input` VARCHAR(256),
    IN `attachment_input` BLOB
)
BEGIN
    DECLARE `user_role` ENUM('Student', 'Teacher');

    --Check if the user is a student
    SELECT `role` INTO `user_role`
    FROM `users`
    WHERE `user_id` = `user_id_input`;

    IF `user_role` = 'Teacher' THEN
        --Insert the post for teachers only
        INSERT INTO `posts` (`user_id`, `course_id`, `post_date`, `status`, `post_text`, `attachement`)
        VALUES (`user_id_input`, `course_id_input`, `CURRENT_TIMESTAMP`, 'Active', `post_text_input`, `attachment_input`);
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only teachers can post.';
    END IF;
END //

DELIMITER ;
