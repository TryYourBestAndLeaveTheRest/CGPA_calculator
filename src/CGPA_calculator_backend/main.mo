// Importing necessary modules
import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Float "mo:base/Float";

actor CGPACalculator {

    // Data structure to represent a course with its code, unit, and grade
    type Course = {
        courseCode : Text;
        courseUnit : Nat;
        grade : Text;
    };

    // Variables to store the total grade points and total course units
    var totalGradePoints : Nat = 0;
    var totalUnits : Nat = 0;
    var courses : [Course] = [];  // Array to store the list of courses

    // Function to add a new course to the list
    public func addCourse(courseCode : Text, courseUnit : Nat, grade : Text) : async () {
        let gradePoint = convertGradeToPoints(grade);
        let courseGradePoints = gradePoint * courseUnit;

        // Update total grade points and units
        totalGradePoints += courseGradePoints;
        totalUnits += courseUnit;

        // Store the course details
        courses := Array.append<Course>(courses, [{
            courseCode = courseCode;
            courseUnit = courseUnit;
            grade = grade;
        }]);
    };

    // Function to calculate the CGPA based on all added courses
    public query func calculateCGPA() : async ?Float {
        if (totalUnits == 0) {
            return null;  // Avoid division by zero
        };
        return ?(Float.fromInt(totalGradePoints) / Float.fromInt(totalUnits));
    };

    // Function to convert a letter grade to grade points on a 5.0 scale
    private func convertGradeToPoints(grade : Text) : Nat {
        if (grade == "A") {
            return 5;
        } else if (grade == "B") {
            return 4;
        } else if (grade == "C") {
            return 3;
        } else if (grade == "D") {
            return 2;
        } else if (grade == "E") {
            return 1;
        } else if (grade == "F") {
            return 0;
        } else {
            return 0;  // Handle any unexpected input
        }
    };

    // Function to retrieve all the courses that have been added
    public query func getCourses() : async [Course] {
        return courses;
    };

    // Function to reset the calculator, clearing all courses and totals
    public func resetCalculator() : async () {
        courses := [];
        totalGradePoints := 0;
        totalUnits := 0;
    };
}
