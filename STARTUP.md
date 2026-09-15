# Lab Program 13 – Startup Instructions

## Objective

Normalize the following Student table up to Third Normal Form (3NF):

    Student(
        StudentID,
        StudentName,
        CourseName,
        FacultyName,
        DepartmentName
    )

## Functional Dependencies

Use the following dependencies:

    StudentID → StudentName, CourseName
    CourseName → FacultyName
    FacultyName → DepartmentName

## Student Work

Create the final normalized relations in `solution.sql`.

Your solution must:

- Remove repeating groups and maintain atomic values.
- Remove partial dependencies.
- Remove transitive dependencies.
- Use primary keys.
- Use foreign keys.
- Maintain referential integrity.
- Insert sample data.

## Suggested 3NF Design

    Department
    ------------------------------
    DepartmentID PRIMARY KEY
    DepartmentName

    Faculty
    ------------------------------
    FacultyID PRIMARY KEY
    FacultyName
    DepartmentID FOREIGN KEY

    Course
    ------------------------------
    CourseID PRIMARY KEY
    CourseName
    FacultyID FOREIGN KEY

    Student
    ------------------------------
    StudentID PRIMARY KEY
    StudentName
    CourseID FOREIGN KEY

## How to Submit

After completing `solution.sql`:

    git add .
    git commit -m "Completed Lab Program 13"
    git push

Then open the **Actions** tab in GitHub and check the autograding result.

## Important

Do not modify `test.sh` or `.github/workflows/autograding.yml`.
