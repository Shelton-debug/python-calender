SELECT * FROM students;

DELETE FROM students;

SELECT * FROM students;
TRUNCATE TABLE students;

SELECT * FROM students;

DROP TABLE students;

CREATE TABLE students (
    studentid INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateofBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    PhoneNumber VARCHAR(15),
    Nationality VARCHAR(50),
    EnrollmentDate DATE,
    Programs VARCHAR(100),
    Status ENUM('Active', 'Inactive', 'Graduated', 'Suspended'),
    FOREIGN KEY (Programs) REFERENCES programs(ProgramName)
);

CREATE TABLE programs (
    ProgramID INT PRIMARY KEY AUTO_INCREMENT,
    ProgramName VARCHAR(100) UNIQUE,
    Duration INT, -- Duration in months
    Department VARCHAR(100),
    ProgramLevel ENUM('Undergraduate', 'Postgraduate', 'Doctorate'),
    AccreditationStatus ENUM('Accredited', 'Pending', 'Not Accredited')
);

SELECT * FROM students;

SELECT * FROM programs;

INSERT INTO students (FirstName, LastName, DateofBirth, Gender, PhoneNumber, Nationality, EnrollmentDate, Program, Status)
VALUES ('John', 'Doe', '2000-01-15', 'Male', '123-456-7890', 'American', '2022-09-01', 'Computer Science', 'Active'),
       ('Jane', 'Smith', '1999-05-22', 'Female', '098-765-4321', 'British', '2021-09-01', 'Business Administration', 'Active'),
       ('Alice', 'Johnson', '2001-03-30', 'Female', '555-123-4567', 'Canadian', '2023-01-15', 'Psychology', 'Active'),
       ('Bob', 'Brown', '1998-11-12', 'Male', '444-987-6543', 'Australian', '2020-09-01', 'Engineering', 'Graduated'),
       ('Charlie', 'Davis', '2002-07-08', 'Other', '333-222-1111', 'Indian', '2023-09-01', 'Medicine', 'Active'),
       ('Eve', 'Wilson', '2000-12-25', 'Female', '222-333-4444', 'New Zealander', '2022-01-10', 'Law', 'Active'),
       ('Frank', 'Miller', '1997-04-18', 'Male', '111-222-3333', 'Irish', '2019-09-01', 'Architecture', 'Suspended'),
       ('Grace', 'Taylor', '2001-09-05', 'Female', '666-777-8888', 'South African', '2023-03-20', 'Nursing', 'Active'),
       ('Hank', 'Anderson', '1999-06-14', 'Male', '777-888-9999', 'German', '2021-01-15', 'Economics', 'Active'),
       ('Ivy', 'Thomas', '2002-10-30', 'Female', '888-999-0000', 'French', '2023-09-01', 'Fine Arts', 'Active');

SELECT * FROM students;

ALTER TABLE students DROP COLUMN Program;
ALTER TABLE students ADD COLUMN Programs VARCHAR(100);

DROP TABLE programs;

DROP TABLE students;

CREATE TABLE students (
    studentid INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateofBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    PhoneNumber VARCHAR(15),
    Nationality VARCHAR(50),
    EnrollmentDate DATE,
    Programs VARCHAR(100),
    Status ENUM('Active', 'Inactive', 'Graduated', 'Suspended'),
    FOREIGN KEY (Programs) REFERENCES programs(ProgramName)
);

CREATE TABLE programs (
    ProgramID INT PRIMARY KEY AUTO_INCREMENT,
    ProgramName VARCHAR(100) UNIQUE,
    Duration VARCHAR(100), 
    Department VARCHAR(100),
    ProgramLevel ENUM('Undergraduate', 'Postgraduate', 'Doctorate'),
    AccreditationStatus ENUM('Accredited', 'Pending', 'Not Accredited')
);

SELECT * FROM students;
SELECT * FROM programs;

INSERT INTO students (FirstName, LastName, DateofBirth, Gender, PhoneNumber, Nationality, EnrollmentDate, Programs, Status)
VALUES ('John', 'Doe', '2000-01-15', 'Male', '123-456-7890', 'American', '2022-09-01', 'Computer Science', 'Active'),
       ('Jane', 'Smith', '1999-05-22', 'Female', '098-765-4321', 'British', '2021-09-01', 'Business Administration', 'Active'),
       ('Alice', 'Johnson', '2001-03-30', 'Female', '555-123-4567', 'Canadian', '2023-01-15', 'Psychology', 'Active'),
       ('Bob', 'Brown', '1998-11-12', 'Male', '444-987-6543', 'Australian', '2020-09-01', 'Engineering', 'Graduated'),
       ('Charlie', 'Davis', '2002-07-08', 'Other', '333-222-1111', 'Indian', '2023-09-01', 'Medicine', 'Active'),
       ('Eve', 'Wilson', '2000-12-25', 'Female', '222-333-4444', 'New Zealander', '2022-01-10', 'Law', 'Active'),
       ('Frank', 'Miller', '1997-04-18', 'Male', '111-222-3333', 'Irish', '2019-09-01', 'Architecture', 'Suspended'),
       ('Grace', 'Taylor', '2001-09-05', 'Female', '666-777-8888', 'South African', '2023-03-20', 'Nursing', 'Active'),
       ('Hank', 'Anderson', '1999-06-14', 'Male', '777-888-9999', 'German', '2021-01-15', 'Economics', 'Active'),
       ('Ivy', 'Thomas', '2002-10-30', 'Female', '888-999-0000', 'French', '2023-09-01', 'Fine Arts', 'Active');
INSERT INTO programs (ProgramName, Duration, Department, ProgramLevel, AccreditationStatus)
VALUES ('Computer Science', '4 years', 'Engineering', 'Undergraduate', 'Accredited'),
       ('Business Administration', '3 years', 'Business', 'Undergraduate', 'Accredited'),
       ('Psychology', '2 years', 'Social Sciences', 'Postgraduate', 'Pending'),
       ('Engineering', '4 years', 'Engineering', 'Undergraduate', 'Accredited'),
       ('Medicine', '5 years', 'Health Sciences', 'Undergraduate', 'Accredited'),
       ('Law', '3 years', 'Law', 'Undergraduate', 'Accredited'),
       ('Architecture', '4 years', 'Design', 'Undergraduate', 'Not Accredited'),
       ('Nursing', '2 years', 'Health Sciences', 'Postgraduate', 'Accredited'),
       ('Economics', '3 years', 'Social Sciences', 'Undergraduate', 'Accredited'),
       ('Fine Arts', '4 years', 'Arts', 'Undergraduate', 'Pending');

SELECT * FROM students;
SELECT * FROM programs;

CREATE TABLE instructors (
    InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateofBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    PhoneNumber VARCHAR(15),
    Nationality VARCHAR(50),
    HireDate DATE,
    Department VARCHAR(100),
    Status ENUM('Active', 'Inactive', 'Retired')
);
SELECT * FROM instructors;

INSERT INTO instructors (FirstName, LastName, DateofBirth, Gender, PhoneNumber, Nationality, HireDate, Department, Status)
VALUES ('Michael', 'Scott', '1975-03-15', 'Male', '123-456-7890', 'American', '2005-07-01', 'Management', 'Active'),
       ('Pam', 'Beesly', '1980-04-25', 'Female', '098-765-4321', 'British', '2006-08-15', 'Arts', 'Active'),
       ('Jim', 'Halpert', '1978-05-15', 'Male', '555-123-4567', 'Canadian', '2004-06-01', 'Sales', 'Active'),
       ('Dwight', 'Schrute', '1976-01-20', 'Male', '444-987-6543', 'Australian', '2005-09-01', 'Sales', 'Active'),
       ('Angela', 'Martin', '1981-07-15', 'Female', '333-222-1111', 'Indian', '2007-10-01', 'Accounting', 'Active'),
       ('Kevin', 'Malone', '1982-08-25', 'Male', '222-333-4444', 'New Zealander', '2008-11-01', 'Accounting', 'Active'),
       ('Oscar', 'Martinez', '1980-09-30', 'Male', '111-222-3333', 'Irish', '2006-12-01', 'Accounting', 'Active'),
       ('Toby', 'Flenderson', '1975-10-15', 'Male', '666-777-8888', 'South African', '2005-01-01', 'Human Resources', 'Active'),
       ('Phyllis', 'Vance', '1979-11-20', 'Female', '777-888-9999', 'German', '2006-02-01', 'Sales', 'Active'),
       ('Stanley', 'Hudson', '1974-12-25', 'Male', '888-999-0000', 'French', '2003-03-01', 'Sales', 'Active');

SELECT * FROM instructors;

CREATE TABLE courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) UNIQUE,
    Description TEXT,
    Credits INT,
    Department VARCHAR(100),
    Level ENUM('Undergraduate', 'Postgraduate', 'Doctorate'),
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES instructors(InstructorID)
);
SELECT * FROM courses;
INSERT INTO courses (CourseName, Description, Credits, Department, Level, InstructorID)
VALUES ('Introduction to Computer Science', 'Basics of computer science and programming.', 3, 'Engineering', 'Undergraduate', 1),
       ('Business Management 101', 'Fundamentals of business management.', 3, 'Business', 'Undergraduate', 2),
       ('Advanced Psychology', 'In-depth study of psychological theories and practices.', 4, 'Social Sciences', 'Postgraduate', 3),
       ('Thermodynamics', 'Study of energy, heat, and work.', 4, 'Engineering', 'Undergraduate', 4),
       ('Human Anatomy', 'Comprehensive overview of human body structure.', 5, 'Health Sciences', 'Undergraduate', 5),
       ('Corporate Law', 'Introduction to corporate legal principles.', 3, 'Law', 'Undergraduate', 6),
       ('Architectural Design', 'Principles and practices of architectural design.', 4, 'Design', 'Undergraduate', 7),
       ('Nursing Practices', 'Essential nursing skills and knowledge.', 2, 'Health Sciences', 'Postgraduate', 8),
       ('Microeconomics', 'Study of individual economic agents and markets.', 3, 'Social Sciences', 'Undergraduate', 9),
       ('Art History', 'Exploration of art movements and their historical contexts.', 4, 'Arts', 'Undergraduate', 10);
SELECT * FROM courses;

CREATE TABLE enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(2),
    Status ENUM('Enrolled', 'Completed', 'Dropped'),
    FOREIGN KEY (StudentID) REFERENCES students(studentid),
    FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);
SELECT * FROM enrollments;
ALTER TABLE enrollments ADD COLUMN Semester VARCHAR(10);
SELECT * FROM enrollments;
INSERT INTO enrollments (StudentID, CourseID, EnrollmentDate, Grade, Status, Semester)
VALUES (1, 1, '2022-09-01', 'A', 'Completed', 'Fall2022'),
       (2, 2, '2021-09-01', 'B+', 'Completed', 'Fall2021'),
       (3, 3, '2023-01-15', NULL, 'Enrolled', 'Spring2023'),
       (4, 4, '2020-09-01', 'A-', 'Completed', 'Fall2020'),
       (5, 5, '2023-09-01', NULL, 'Enrolled', 'Fall2023'),
       (6, 6, '2022-01-10', 'B', 'Completed', 'Spring2022'),
       (7, 7, '2019-09-01', 'C+', 'Completed', 'Fall2019'),
       (8, 8, '2023-03-20', NULL, 'Enrolled', 'Spring2023'),
       (9, 9, '2021-01-15', 'A', 'Completed', 'Spring2021'),
       (10, 10, '2023-09-01', NULL, 'Enrolled', 'Fall2023');
SELECT * FROM enrollments;

CREATE TABLE departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) UNIQUE,
    HeadOfDepartment VARCHAR(100),
    ContactEmail VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Location VARCHAR(100)
);
SELECT * FROM departments;
INSERT INTO departments (DepartmentName, HeadOfDepartment, ContactEmail, PhoneNumber, Location)
VALUES ('Engineering', 'Alice Johnson', 'alice.johnson@example.com', '123-456-7890', 'Building A'),
       ('Business', 'Bob Smith', 'bob.smith@example.com', '234-567-8901', 'Building B'),
       ('Social Sciences', 'Charlie Brown', 'charlie.brown@example.com', '345-678-9012', 'Building C'),
       ('Health Sciences', 'Diana Prince', 'diana.prince@example.com', '456-789-0123', 'Building D'),
       ('Law', 'Ethan Hunt', 'ethan.hunt@example.com', '567-890-1234', 'Building E'),
       ('Design', 'Fiona Gallagher', 'fiona.gallagher@example.com', '678-901-2345', 'Building F'),
       ('Education', 'George Costanza', 'george.costanza@example.com', '789-012-3456', 'Building G'),
       ('Arts', 'Hannah Baker', 'hannah.baker@example.com', '890-123-4567', 'Building H');
SELECT * FROM departments;
CREATE TABLE classrooms (
    ClassroomID INT PRIMARY KEY AUTO_INCREMENT,
    Building VARCHAR(100),
    RoomNumber VARCHAR(10),
    Capacity INT,
    Resources TEXT
);
SELECT * FROM classrooms;
INSERT INTO classrooms (Building, RoomNumber, Capacity, Resources)
VALUES ('Building A', '101', 30, 'Projector, Whiteboard'),
       ('Building A', '102', 25, 'Projector, Whiteboard'),
       ('Building B', '201', 40, 'Projector, Whiteboard, Computers'),
       ('Building B', '202', 35, 'Projector, Whiteboard'),
       ('Building C', '301', 50, 'Projector, Whiteboard, Computers'),
       ('Building C', '302', 45, 'Projector, Whiteboard'),
       ('Building D', '401', 60, 'Projector, Whiteboard, Computers'),
       ('Building D', '402', 55, 'Projector, Whiteboard');
SELECT * FROM classrooms;
INSERT INTO classrooms (Building, RoomNumber, Capacity, Resources)
VALUES ('Building E', '501', 20, 'Projector, Whiteboard'),
       ('Building E', '502', 15, 'Projector, Whiteboard');
SELECT * FROM classrooms;

CREATE TABLE academic_calendar (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    EventName VARCHAR(100),
    EventDate DATE,
    Description TEXT,
    EventType ENUM('Holiday', 'Exam', 'Semester Start', 'Semester End', 'Other')
);
SELECT * FROM academic_calendar;
INSERT INTO academic_calendar (EventName, EventDate, Description, EventType)
VALUES ('New Year Holiday', '2023-01-01', 'Celebration of the New Year', 'Holiday'),
       ('Midterm Exams', '2023-02-15', 'Examinations for the first half of the semester', 'Exam'),
       ('Spring Semester Start', '2023-03-01', 'Beginning of the Spring semester', 'Semester Start'),
       ('Spring Semester End', '2023-06-15', 'End of the Spring semester', 'Semester End'),
       ('Independence Day', '2023-07-04', 'Celebration of Independence Day', 'Holiday');
SELECT * FROM academic_calendar;

CREATE TABLE academic_records (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(10),
    Year INT,
    Grade VARCHAR(2),
    Status ENUM('Passed', 'Failed', 'Incomplete'),
    FOREIGN KEY (StudentID) REFERENCES students(studentid),
    FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);
SELECT * FROM academic_records;
INSERT INTO academic_records (StudentID, CourseID, Semester, Year, Grade, Status)
VALUES (1, 1, 'Fall2020', 2020, 'A', 'Passed'),
       (2, 2, 'Spring2021', 2021, 'B+', 'Passed'),
       (3, 3, 'Fall2021', 2021, 'A-', 'Passed'),
       (4, 4, 'Spring2022', 2022, 'B', 'Passed'),
       (5, 5, 'Fall2022', 2022, 'C+', 'Failed'),
       (6, 6, 'Spring2023', 2023, 'A', 'Passed'),
       (7, 7, 'Fall2023', 2023, 'B-', 'Incomplete'),
       (8, 8, 'Spring2023', 2023, 'A+', 'Passed'),
       (9, 9, 'Fall2021', 2021, 'B', 'Passed'),
       (10, 10, 'Spring2022', 2022, 'A-', 'Passed');
SELECT * FROM academic_records;
CREATE TABLE attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    Date DATE,
    Status ENUM('Present', 'Absent', 'Excused'),
    FOREIGN KEY (StudentID) REFERENCES students(studentid),
    FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);
SELECT * FROM attendance;
INSERT INTO attendance (StudentID, CourseID, Date, Status)
VALUES (1, 1, '2023-01-10', 'Present'),
       (2, 2, '2023-01-10', 'Absent'),
       (3, 3, '2023-01-10', 'Excused'),
       (4, 4, '2023-01-10', 'Present'),
       (5, 5, '2023-01-10', 'Absent'),
       (6, 6, '2023-01-10', 'Present'),
       (7, 7, '2023-01-10', 'Excused'),
       (8, 8, '2023-01-10', 'Present'),
       (9, 9, '2023-01-10', 'Absent'),
       (10, 10, '2023-01-10', 'Present');
SELECT * FROM attendance;

CREATE TABLE user_accounts (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE,
    PasswordHash VARCHAR(255),
    Role ENUM('Student', 'Instructor', 'Admin'),
    AssociatedID INT, -- Links to StudentID or InstructorID based on Role
    FOREIGN KEY (AssociatedID) REFERENCES students(studentid),
    FOREIGN KEY (AssociatedID) REFERENCES instructors(InstructorID)
);
SELECT * FROM user_accounts;
INSERT INTO user_accounts (Username, PasswordHash, Role, AssociatedID)
VALUES ('student1', 'hashed_password1', 'Student', 1),
       ('instructor1', 'hashed_password2', 'Instructor', 1),
       ('admin1', 'hashed_password3', 'Admin', NULL),
       ('student2', 'hashed_password4', 'Student', 2),
       ('instructor2', 'hashed_password5', 'Instructor', 2),
       ('student3', 'hashed_password6', 'Student', 3),
       ('instructor3', 'hashed_password7', 'Instructor', 3),
       ('student4', 'hashed_password8', 'Student', 4),
       ('instructor4', 'hashed_password9', 'Instructor', 4),
       ('student5', 'hashed_password10', 'Student', 5),
       ('instructor5', 'hashed_password11', 'Instructor', 5),
       ('student6', 'hashed_password12', 'Student', 6),
       ('instructor6', 'hashed_password13', 'Instructor', 6),
       ('student7', 'hashed_password14', 'Student', 7),
       ('instructor7', 'hashed_password15', 'Instructor', 7),
       ('student8', 'hashed_password16', 'Student', 8),
       ('instructor8', 'hashed_password17', 'Instructor', 8),
       ('student9', 'hashed_password18', 'Student', 9),
       ('instructor9', 'hashed_password19', 'Instructor', 9),
       ('student10', 'hashed_password20', 'Student', 10),
       ('instructor10', 'hashed_password21', 'Instructor', 10);
SELECT * FROM user_accounts;
CREATE TABLE library (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200),
    Author VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    PublishedYear INT,
    CopiesAvailable INT,
    issuedDate DATE,
    returnDate DATE,
    IssuedTo INT,
    FOREIGN KEY (IssuedTo) REFERENCES students(studentid)
);
SELECT * FROM library;
INSERT INTO library (Title, Author, ISBN, PublishedYear, CopiesAvailable, issuedDate, returnDate, IssuedTo)
VALUES ('Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', 2009, 5, '2023-01-10', '2023-02-10', 1),
       ('Clean Code', 'Robert C. Martin', '9780132350884', 2008, 3, '2023-01-15', '2023-02-15', 2),
       ('The Pragmatic Programmer', 'Andrew Hunt', '9780201616224', 1999, 4, NULL, NULL, NULL),
       ('Design Patterns', 'Erich Gamma', '9780201633610', 1994, 2, '2023-01-20', '2023-02-20', 3),
       ('Artificial Intelligence: A Modern Approach', 'Stuart Russell', '9780136042594', 2010, 6, NULL, NULL, NULL),
       ('Database System Concepts', 'Abraham Silberschatz', '9780073523323', 2010, 5, '2023-01-25', '2023-02-25', 4),
       ('Operating System Concepts', 'Abraham Silberschatz', '9781118063330', 2012, 4, NULL, NULL, NULL),
       ('Computer Networks', 'Andrew S. Tanenbaum', '9780132126953', 2010, 3, '2023-01-30', '2023-02-28', 5),
       ('Introduction to the Theory of Computation', 'Michael Sipser', '9781133187790', 2012, 2, NULL, NULL, NULL),
       ('Structure and Interpretation of Computer Programs', 'Harold Abelson', '9780262510875', 1996, 1, '2023-02-01', '2023-03-01', 6);
SELECT * FROM library;
CREATE TABLE hostels (
    HostelID INT PRIMARY KEY AUTO_INCREMENT,
    HostelName VARCHAR(100),
    Location VARCHAR(100),
    Capacity INT,
    AvailableRooms INT,
    WardenName VARCHAR(100),
    ContactNumber VARCHAR(15)
);
SELECT * FROM hostels;
INSERT INTO hostels (HostelName, Location, Capacity, AvailableRooms, WardenName, ContactNumber)
VALUES ('Maple Hostel', 'North Campus', 100, 20, 'John Ward', '123-456-7890'),
       ('Oak Hostel', 'South Campus', 80, 15, 'Alice Green', '234-567-8901'),
       ('Pine Hostel', 'East Campus', 120, 30, 'Bob Brown', '345-678-9012'),
       ('Cedar Hostel', 'West Campus', 90, 10, 'Diana White', '456-789-0123');
SELECT * FROM hostels;
CREATE TABLE hostel_allocations (
    AllocationID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    HostelID INT,
    RoomNumber VARCHAR(10),
    CheckInDate DATE,
    CheckOutDate DATE,
    FOREIGN KEY (StudentID) REFERENCES students(studentid),
    FOREIGN KEY (HostelID) REFERENCES hostels(HostelID)
);
SELECT * FROM hostel_allocations;
INSERT INTO hostel_allocations (StudentID, HostelID, RoomNumber, CheckInDate, CheckOutDate)
VALUES (1, 1, 'A101', '2023-01-10', '2023-06-10'),
       (2, 2, 'B201', '2023-01-15', '2023-06-15'),
       (3, 1, 'A102', '2023-01-20', '2023-06-20'),
       (4, 3, 'C301', '2023-01-25', '2023-06-25'),
       (5, 4, 'D401', '2023-01-30', '2023-06-30'),
       (6, 2, 'B202', '2023-02-01', '2023-07-01'),
       (7, 3, 'C302', '2023-02-05', '2023-07-05'),
       (8, 1, 'A103', '2023-02-10', '2023-07-10'),
       (9, 4, 'D402', '2023-02-15', '2023-07-15'),
       (10, 2, 'B203', '2023-02-20', '2023-07-20');
SELECT * FROM hostel_allocations;

CREATE TABLE financial_records (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    Amount DECIMAL(10, 2),
    TransactionDate DATE,
    Description TEXT,
    TransactionType ENUM('Tuition', 'Hostel', 'Library Fine', 'Other'),
    FOREIGN KEY (StudentID) REFERENCES students(studentid)
);
SELECT * FROM financial_records;
INSERT INTO financial_records (StudentID, Amount, TransactionDate, Description, TransactionType)
VALUES (1, 5000.00, '2023-01-10', 'Tuition Fee', 'Tuition'),
       (2, 2000.00, '2023-01-15', 'Hostel Fee', 'Hostel'),
       (3, 150.00, '2023-01-20', 'Library Fine', 'Library Fine'),
       (4, 3000.00, '2023-01-25', 'Tuition Fee', 'Tuition'),
       (5, 2500.00, '2023-01-30', 'Hostel Fee', 'Hostel'),
       (6, 100.00, '2023-02-01', 'Library Fine', 'Library Fine'),
       (7, 4000.00, '2023-02-05', 'Tuition Fee', 'Tuition'),
       (8, 3500.00, '2023-02-10', 'Hostel Fee', 'Hostel'),
       (9, 200.00, '2023-02-15', 'Library Fine', 'Library Fine'),
       (10, 4500.00, '2023-02-20', 'Tuition Fee', 'Tuition');
SELECT * FROM financial_records;
