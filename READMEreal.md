CGPA Calculator

A simple command-line application built with Motoko programming language to calculate Cumulative Grade Point Average (CGPA).

Features

- Takes user input for course code, course unit, and grade (A, B, C, D, E, or F)
- Allows users to add multiple courses
- Calculates CGPA when "Calculate CGPA" button is clicked
- Provides a breakdown of input courses upon request

Usage

1. Run the application
2. Enter course code, course unit, and grade for each course
    - Grade should be in the format A, B, C, D, E, or F (not numerical values like 50, 78, etc.)
3. Add multiple courses as needed
4. Click "Calculate CGPA" to get your CGPA
5. Request a breakdown of input courses for detailed information

Example Usage

Enter course code, unit, and grade (A-F) for each course:

Course 1:
Code: MATH101
Unit: 3
Grade: A

Course 2:
Code: ENGL102
Unit: 2
Grade: B

Click "Calculate CGPA" to get your CGPA

CGPA Calculation Formula

CGPA = (Total Grade Points) / (Total Units)

Error Handling

Invalid inputs will be prompted with an error message. Please ensure grades are in the format A-F.

Built with

- Motoko programming language
- Motoko libraries:
    - Nat (Natural Numbers)
    - Array
    - Float (Floating-point numbers)

Future Developments

- Add support for more grading schemes
- Implement a GUI interface

No dependencies, installation instructions, or licenses required.

Contact

For issues, suggestions, or support, please open a GitHub issue or email jchisomb@gmail.com.
