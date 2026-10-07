USE CollegeDB;

-- Faculty table
CREATE TABLE Faculty (
    FacultyName VARCHAR(50) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Course table
CREATE TABLE Course (
    CourseName VARCHAR(50) PRIMARY KEY,
    FacultyName VARCHAR(50) NOT NULL,
    FOREIGN KEY (FacultyName) REFERENCES Faculty(FacultyName)
);

-- Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    CourseName VARCHAR(50) NOT NULL,
    FOREIGN KEY (CourseName) REFERENCES Course(CourseName)
);

-- Sample data
INSERT INTO Faculty (FacultyName, DepartmentName)
VALUES
('Dr. Kumar', 'Computer Science'),
('Dr. Meena', 'Commerce');

INSERT INTO Course (CourseName, FacultyName)
VALUES
('BCA', 'Dr. Kumar'),
('B.Com', 'Dr. Meena');

INSERT INTO Student (StudentID, StudentName, CourseName)
VALUES
(101, 'Arun', 'BCA'),
(102, 'Priya', 'BCA'),
(103, 'Ravi', 'B.Com');

-- Display data
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
