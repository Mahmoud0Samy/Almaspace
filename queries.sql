-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `enrolled_date`, `major`, `date_of_birth`, `gender`, `address`, `phone_number`, `email`, `ssn`, `country`, `status`) VALUES
    ('ST001', 'John', 'Doe', '2023-01-01', 'Computer Science', '1990-01-15', 'Male', '123 Main St', '123-456-7890', 'john.doe@example.com', '123-45-6789', 'Egypt', 'Active'),
    ('ST002', 'Jane', 'Smith', '2023-02-01', 'Physics', '1988-05-20', 'Female', '456 Oak St', '987-654-3210', 'jane.smith@example.com', '987-65-4321', 'Egypt', 'Active'),
    ('ST003', 'Alice', 'Johnson', '2023-03-15', 'Mathematics', '1992-09-05', 'Female', '789 Elm St', '234-567-8901', 'alice.j@example.com', '234-56-7890', 'Egypt', 'Active'),
    ('ST004', 'Bob', 'Williams', '2023-04-20', 'Chemistry', '1991-04-12', 'Male', '890 Cedar St', '345-678-9012', 'bob.w@example.com', '345-67-8901', 'Egypt', 'Active'),
    ('ST005', 'Emma', 'Brown', '2023-05-10', 'History', '1989-07-28', 'Female', '567 Pine St', '456-789-0123', 'emma.b@example.com', '456-78-9012', 'Egypt', 'Active'),
    ('ST006', 'Michael', 'Clark', '2023-06-05', 'Computer Engineering', '1993-12-03', 'Male', '345 Birch St', '567-890-1234', 'michael.c@example.com', '567-89-0123', 'Egypt', 'Active'),
    ('ST007', 'Sarah', 'Miller', '2023-07-18', 'Psychology', '1990-11-19', 'Female', '234 Maple St', '678-901-2345', 'sarah.m@example.com', '678-90-1234', 'Egypt', 'Active'),
    ('ST008', 'David', 'White', '2023-08-22', 'Economics', '1994-05-07', 'Male', '123 Oak St', '789-012-3456', 'david.w@example.com', '789-01-2345', 'Egypt', 'Active'),
    ('ST009', 'Olivia', 'Taylor', '2023-09-30', 'Biology', '1992-03-24', 'Female', '456 Pine St', '890-123-4567', 'olivia.t@example.com', '890-12-3456', 'Egypt', 'Active'),
    ('ST010', 'James', 'Anderson', '2023-10-12', 'English', '1988-08-15', 'Male', '789 Cedar St', '901-234-5678', 'james.a@example.com', '901-23-4567', 'Egypt', 'Active');


INSERT INTO `teachers` (`teacher_id`, `first_name`, `last_name`, `join_date`, `major`, `date_of_birth`, `gender`, `address`, `phone_number`, `email`, `ssn`, `country`, `status`)
VALUES
    ('TE001', 'Mark', 'Johnson', '2022-05-01', 'Mathematics', '1975-08-10', 'Male', '789 Pine St', '456-789-0123', 'prof.johnson@example.com', '456-78-9012', 'Egypt', 'Active'),
    ('TE002', 'Smith', 'Mathew', '2021-10-15', 'Physics', '1980-03-25', 'Female', '890 Cedar St', '789-012-3456', 'dr.smith@example.com', '789-01-2345', 'Egypt', 'Active'),
    ('TE003', 'Joe', 'Roberts', '2023-01-10', 'Economics', '1978-06-20', 'Male', '567 Elm St', '234-567-8901', 'prof.roberts@example.com', '234-56-7890', 'Egypt', 'Active'),
    ('TE004', 'Brown', 'Mike', '2023-02-25', 'Chemistry', '1976-11-05', 'Female', '456 Birch St', '345-678-9012', 'dr.brown@example.com', '345-67-8901', 'Egypt', 'Active'),
    ('TE005', 'Ashly', 'Miller', '2023-04-12', 'Psychology', '1982-09-15', 'Male', '345 Oak St', '456-789-0123', 'prof.miller@example.com', '456-78-9012', 'Egypt', 'Active'),
    ('TE006', 'Wilson', 'Aster', '2023-05-30', 'History', '1985-04-02', 'Female', '567 Pine St', '567-890-1234', 'dr.wilson@example.com', '567-89-0123', 'Egypt', 'Active'),
    ('TE007', 'Lionel', 'Clark', '2023-07-15', 'Computer Science', '1983-12-15', 'Male', '234 Elm St', '678-901-2345', 'prof.clark@example.com', '678-90-1234', 'Egypt', 'Active'),
    ('TE008', 'Anderson', 'Messi', '2023-09-05', 'Biology', '1979-07-28', 'Female', '789 Cedar St', '789-012-3456', 'dr.anderson@example.com', '789-01-2345', 'Egypt', 'Active'),
    ('TE009', 'Xavi', 'Taylor', '2023-10-25', 'Economics', '1987-03-24', 'Male', '456 Pine St', '890-123-4567', 'prof.taylor@example.com', '890-12-3456', 'Egypt', 'Active'),
    ('TE010', 'Davis', 'Persie', '2023-12-08', 'English', '1981-08-15', 'Female', '123 Oak St', '901-234-5678', 'dr.davis@example.com', '901-23-4567', 'Egypt', 'Active');

INSERT INTO `users` (`username`, `password`, `person_id`, `role`)
VALUES
    ('johndoe', 'password123', 'ST001', 'Student'),
    ('janesmith', 'password456', 'ST002', 'Student'),
    ('alicej', 'password345', 'ST003', 'Student'),
    ('bobw', 'password678', 'ST004', 'Student'),
    ('emmab', 'password901', 'ST005', 'Student'),
    ('michaelc', 'password234', 'ST006', 'Student'),
    ('sarahm', 'password567', 'ST007', 'Student'),
    ('davidw', 'password890', 'ST008', 'Student'),
    ('oliviat', 'password123', 'ST009', 'Student'),
    ('jamesa', 'password456', 'ST010', 'Student'),
    ('profjohnson', 'password789', 'TE001', 'Teacher'),
    ('drsmith', 'password012', 'TE002', 'Teacher'),
    ('profroberts', 'password789', 'TE003', 'Teacher'),
    ('drbrown', 'password012', 'TE004', 'Teacher'),
    ('profmiller', 'password345', 'TE005', 'Teacher'),
    ('Wilsonast', 'password123', 'TE006', 'Teacher'),
    ('Lionelc', 'password456', 'TE007', 'Teacher'),
    ('profMessi', 'password789', 'TE008', 'Teacher'),
    ('drXavi', 'password012', 'TE009', 'Teacher'),
    ('profDavis', 'password345', 'TE010', 'Teacher');

INSERT INTO `messages` (`sender_id`, `receiver_id`, `message`)
VALUES
    (1, 11, 'Hello, how are you?'),
    (2, 12, 'Meeting tomorrow at 3 PM.'),
    (3, 13, 'Please review the document.'),
    (4, 14, 'Dont forget about the assignment.'),
    (5, 15, 'Are you available for a call?'),
    (6, 16, 'Check the latest research paper.'),
    (7, 17, 'Reminder: Submit your project by Friday.'),
    (8, 18, 'Lets discuss the upcoming event.'),
    (9, 19, 'Did you receive my email?'),
    (10, 20, 'Important announcement: Class canceled.'),
    (11, 1, 'I need clarification on the assignment.'),
    (12, 2, 'Are you attending the workshop?'),
    (13, 3, 'Review the syllabus for next week.'),
    (14, 4, 'Reminder: Quiz on Monday.'),
    (15, 5, 'Check the attached file for details.'),
    (16, 6, 'I have a question about the project.'),
    (17, 7, 'Lets schedule a meeting.'),
    (18, 8, 'Your presentation was excellent.'),
    (19, 9, 'Please confirm your attendance.'),
    (20, 10, 'The exam results are out.'),
    (1, 12, 'Happy birthday!'),
    (2, 13, 'Discussing the research proposal.'),
    (3, 14, 'Meeting agenda for the week.'),
    (4, 15, 'Can you share your notes?'),
    (5, 16, 'Reminder: Submit your paper by Monday.'),
    (6, 17, 'Feedback on the group project.'),
    (7, 18, 'Lets plan for the field trip.'),
    (8, 19, 'Follow-up on the previous discussion.'),
    (9, 20, 'Check your inbox for updates.'),
    (10, 1, 'The conference is next month.'),
    (11, 2, 'Discussing the final project.'),
    (12, 3, 'Reminder: Office hours tomorrow.'),
    (13, 4, 'Can you assist with the assignment?'),
    (14, 5, 'Important announcement: Class rescheduled.'),
    (15, 6, 'Feedback on the presentation.'),
    (16, 7, 'Confirming the meeting time.'),
    (17, 8, 'Discussing the course curriculum.'),
    (18, 9, 'Reviewing the study materials.'),
    (19, 10, 'Your opinion on the research topic.'),
    (20, 11, 'Happy holidays!');

INSERT INTO `courses` (`course_code`, `course_name`, `credit_hours`, `description`, `prerequisite`, `semester`, `year`)
VALUES
    ('CS101', 'Introduction to Computer Science', 3, 'Fundamental concepts of computer science.', NULL, 'Fall', '2023'),
    ('MATH201', 'Calculus I', 4, 'Limits, derivatives, and integrals.', NULL, 'Spring', '2023'),
    ('ENG102', 'Composition and Rhetoric', 3, 'Developing effective writing skills.', NULL, 'Fall', '2023'),
    ('PHYS202', 'Physics II', 4, 'Electricity, magnetism, and optics.', 'PHYS201', 'Spring', '2023'),
    ('HIST150', 'World History', 3, 'Overview of major historical events.', NULL, 'Fall', '2023'),
    ('CHEM101', 'Introduction to Chemistry', 3, 'Basic principles of chemistry.', NULL, 'Spring', '2023'),
    ('PSYC220', 'Introduction to Psychology', 3, 'Fundamental concepts of psychology.', NULL, 'Summer', '2023'),
    ('ECON301', 'Microeconomics', 3, 'Individual and firm behavior in markets.', 'ECON101', 'Fall', '2023'),
    ('ART105', 'Introduction to Art History', 3, 'Survey of art history and styles.', NULL, 'Spring', '2023'),
    ('BIOL210', 'Cell Biology', 4, 'Structure and function of cells.', 'BIOL101', 'Fall', '2023');

INSERT INTO `tutor` (`teacher_id`, `course_id`)
VALUES
    ('TE001', 1),
    ('TE002', 2),
    ('TE003', 3),
    ('TE004', 4),
    ('TE005', 5),
    ('TE006', 6),
    ('TE007', 7),
    ('TE008', 8),
    ('TE009', 9),
    ('TE010', 10);

INSERT INTO `enrolled` (`student_id`, `course_id`)
VALUES
    ('ST001', 1),
    ('ST002', 2),
    ('ST003', 3),
    ('ST004', 4),
    ('ST005', 5),
    ('ST006', 6),
    ('ST007', 7),
    ('ST008', 8),
    ('ST009', 9),
    ('ST010', 10);

INSERT INTO `quizes` (`user_id`, `course_id`, `status`, `quiz_date`, `duration_minutes`)
VALUES
    (1, 1, 'Active', '2023-01-15 10:00:00', 45),
    (2, 2, 'Active', '2023-02-20 14:30:00', 60),
    (3, 3, 'Active', '2023-03-10 09:15:00', 30),
    (4, 4, 'Active', '2023-04-05 11:45:00', 40),
    (5, 5, 'Active', '2023-05-18 13:00:00', 50),
    (6, 6, 'Active', '2023-06-22 15:30:00', 35),
    (7, 7, 'Active', '2023-07-08 08:00:00', 45),
    (8, 8, 'Active', '2023-08-14 12:30:00', 30),
    (9, 9, 'Active', '2023-09-25 16:15:00', 40),
    (10, 10, 'Active', '2023-10-30 09:45:00', 55);

INSERT INTO `questions` (`quiz_id`, `question`, `correct_answer`, `wrong_answer1`, `wrong_answer2`, `wrong_answer3`, `attachement`)
VALUES
    (1, 'What is the capital of France?', 'Paris', 'Berlin', 'London', 'Madrid', NULL),
    (1, 'Who wrote "Romeo and Juliet"?', 'William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Homer', NULL),
    (1, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Fe', 'Cu', NULL),
    (2, 'Which planet is known as the Red Planet?', 'Mars', 'Venus', 'Jupiter', 'Saturn', NULL),
    (2, 'What is the largest mammal on Earth?', 'Blue Whale', 'Elephant', 'Giraffe', 'Hippopotamus', NULL),
    (2, 'In which year did the Titanic sink?', '1912', '1905', '1920', '1931', NULL),
    (3, 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', NULL),
    (3, 'What is the currency of Japan?', 'Yen', 'Won', 'Pound', 'Euro', NULL),
    (3, 'Who discovered penicillin?', 'Alexander Fleming', 'Marie Curie', 'Louis Pasteur', 'Joseph Lister', NULL),
    (4, 'What is the square root of 144?', '12', '10', '14', '16', NULL),
    (4, 'Who is the author of "To Kill a Mockingbird"?', 'Harper Lee', 'J.K. Rowling', 'George Orwell', 'Mark Twain', NULL),
    (4, 'What is the capital of Japan?', 'Tokyo', 'Beijing', 'Seoul', 'Bangkok', NULL),
    (5, 'Which element has the symbol Hg?', 'Mercury', 'Helium', 'Hydrogen', 'Magnesium', NULL),
    (5, 'Who was the first President of the United States?', 'George Washington', 'Thomas Jefferson', 'John Adams', 'Abraham Lincoln', NULL),
    (5, 'What is the main ingredient in guacamole?', 'Avocado', 'Tomato', 'Onion', 'Lemon', NULL),
    (6, 'Who wrote "The Great Gatsby"?', 'F. Scott Fitzgerald', 'Ernest Hemingway', 'J.D. Salinger', 'Jane Austen', NULL),
    (6, 'What is the capital of Brazil?', 'Brasília', 'Rio de Janeiro', 'São Paulo', 'Buenos Aires', NULL),
    (6, 'Which planet is known as the "Morning Star" or "Evening Star"?', 'Venus', 'Mars', 'Jupiter', 'Saturn', NULL),
    (7, 'What is the largest ocean on Earth?', 'Pacific Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', NULL),
    (7, 'Who developed the theory of relativity?', 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei', 'Stephen Hawking', NULL),
    (7, 'What is the chemical symbol for oxygen?', 'O', 'O2', 'O3', 'CO2', NULL),
    (8, 'Who played Jack Dawson in the movie "Titanic"?', 'Leonardo DiCaprio', 'Tom Hanks', 'Brad Pitt', 'Johnny Depp', NULL),
    (8, 'What is the currency of Germany?', 'Euro', 'Dollar', 'Pound', 'Yen', NULL),
    (8, 'Who discovered electricity?', 'Benjamin Franklin', 'Thomas Edison', 'Alexander Graham Bell', 'Nikola Tesla', NULL),
    (9, 'What is the capital of Australia?', 'Canberra', 'Sydney', 'Melbourne', 'Brisbane', NULL),
    (9, 'Which gas is most abundant in Earths atmosphere?', 'Nitrogen', 'Oxygen', 'Carbon Dioxide', 'Argon', NULL),
    (9, 'Who wrote "1984"?', 'George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'H.G. Wells', NULL),
    (10, 'What is the main ingredient in sushi?', 'Rice', 'Fish', 'Seaweed', 'Soy Sauce', NULL),
    (10, 'Which planet is known as the "Red Planet"?', 'Mars', 'Venus', 'Jupiter', 'Saturn', NULL),
    (10, 'Who painted "Starry Night"?', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci', NULL);

INSERT INTO `grades` (`quiz_id`, `student_id`, `grade`, `minutes_left`)
VALUES
    (1, 'ST001', 85, 10),
    (2, 'ST002', 92, 15),
    (3, 'ST003', 78, 5),
    (4, 'ST004', 95, 20),
    (5, 'ST005', 88, 8),
    (6, 'ST006', 76, 12),
    (7, 'ST007', 90, 18),
    (8, 'ST008', 85, 10),
    (9, 'ST009', 94, 15),
    (10, 'ST010', 80, 5);

INSERT INTO `posts` (`user_id`, `course_id`, `post_date`, `status`, `post_text`, `attachement`)
VALUES
    (11, 1, '2023-01-15 10:00:00', 'Active', 'Hello, students! Welcome to the new semester.', NULL),
    (12, 2, '2023-02-20 14:30:00', 'Active', 'Reminder: Assignment due next week.', NULL),
    (13, 3, '2023-03-10 09:15:00', 'Active', 'Discussion forum is now open. Share your thoughts!', NULL),
    (14, 4, '2023-04-05 11:45:00', 'Active', 'Important announcement: Class canceled tomorrow.', NULL),
    (15, 5, '2023-05-18 13:00:00', 'Active', 'Check out the new reading materials in the library.', NULL),
    (16, 6, '2023-06-22 15:30:00', 'Active', 'Upcoming guest lecture by renowned expert.', NULL),
    (17, 7, '2023-07-08 08:00:00', 'Active', 'Reminder: Project proposals due next Friday.', NULL),
    (18, 8, '2023-08-14 12:30:00', 'Active', 'Feedback session scheduled for next week.', NULL),
    (19, 9, '2023-09-25 16:15:00', 'Active', 'Explore the online resources for your research.', NULL),
    (20, 10, '2023-10-30 09:45:00', 'Active', 'Student achievements: Congratulations to all!', NULL),
    (11, 1, '2023-11-15 10:00:00', 'Active', 'Discussion forum topic: Current trends in the field.', NULL),
    (12, 2, '2023-12-20 14:30:00', 'Active', 'Reminder: Group project meeting tomorrow.', NULL),
    (13, 3, '2024-01-10 09:15:00', 'Active', 'Guest speaker series: Save the date!', NULL),
    (14, 4, '2024-02-25 11:45:00', 'Active', 'Important update: Changes in the exam schedule.', NULL),
    (15, 5, '2024-03-18 13:00:00', 'Active', 'Explore career opportunities in the field.', NULL),
    (16, 6, '2024-04-22 15:30:00', 'Active', 'Upcoming workshop on research methodologies.', NULL),
    (17, 7, '2024-05-08 08:00:00', 'Active', 'Reminder: Final project submissions due soon.', NULL),
    (18, 8, '2024-06-14 12:30:00', 'Active', 'Feedback session for the semester.', NULL),
    (19, 9, '2024-07-25 16:15:00', 'Active', 'Join the online discussion on recent developments.', NULL),
    (20, 10, '2024-08-30 09:45:00', 'Active', 'Student spotlight: Interview with a successful alumnus.', NULL);


INSERT INTO `comments` (`user_id`, `post_id`, `comment_date`, `comment_text`)
VALUES
  (1, 1, '2023-01-16 11:30:00', 'Great start to the semester! Looking forward to the lessons.'),
  (2, 2, '2023-02-21 15:45:00', 'I have a question regarding the assignment. Can someone help?'),
  (3, 3, '2023-03-11 10:30:00', 'Exciting topics for discussion! Lets engage, everyone.'),
  (4, 4, '2023-04-06 12:15:00', 'Thank you for the notice. I appreciate the heads up.'),
  (5, 5, '2023-05-19 14:00:00', 'The new reading materials are fantastic. Thanks for sharing!'),
  (6, 6, '2023-06-23 16:45:00', 'Looking forward to the guest lecture. Always a great learning experience.'),
  (7, 7, '2023-07-09 09:30:00', 'Submitted my project proposal. Excited to get started!'),
  (8, 8, '2023-08-15 13:15:00', 'The feedback session was helpful. Thanks for the insights.'),
  (9, 9, '2023-09-26 17:00:00', 'The online resources are a valuable addition. Great initiative!'),
  (10, 10, '2023-11-01 10:00:00', 'Congratulations to all the students for their achievements!');
