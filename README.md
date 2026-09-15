# Lab Program 13 – Normalize Student Table up to 3NF

## Aim
Normalize the given Student table up to Third Normal Form (3NF) and implement the normalized design using MySQL.

## Given Table

    Student(StudentID, StudentName, CourseName, FacultyName, DepartmentName)

## Functional Dependencies

    StudentID → StudentName, CourseName
    CourseName → FacultyName
    FacultyName → DepartmentName

## Tasks

1. Identify the candidate key.
2. Convert the relation to 1NF.
3. Convert the relation to 2NF.
4. Convert the relation to 3NF.
5. Implement the final normalized relations using SQL.
6. Define appropriate primary keys and foreign keys.
7. Insert sample data.

## Expected 3NF Structure

A suitable decomposition is:

    Student(StudentID, StudentName, CourseID)
    Course(CourseID, CourseName, FacultyID)
    Faculty(FacultyID, FacultyName, DepartmentID)
    Department(DepartmentID, DepartmentName)

Students may use different valid names for surrogate keys, provided the functional dependencies, primary keys, foreign keys, and 3NF principles are correctly implemented.

## Files

| File | Purpose |
|---|---|
| `README.md` | Practical description |
| `STARTUP.md` | Student instructions |
| `schema.sql` | Original table and sample data |
| `solution.sql` | Student's 3NF implementation |
| `test.sh` | Automated test script |
| `.github/workflows/autograding.yml` | GitHub Actions workflow |

## Submission

Commit and push the completed files to GitHub. GitHub Actions will automatically execute the test cases.

## Learning Outcome

After completing this practical, students will be able to identify functional dependencies, partial and transitive dependencies, normalize a relation up to 3NF, and implement the normalized design using SQL.
