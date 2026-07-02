/*
* Dart program to demonstrate decision making constructs.
* Author: Theo
* Description: This program demonstrates the various Dart decision making constructs.
* Date: 2026-06-25
 */

void main()
{
  // Variables to be used in the program
  int age = 70;
  int score = 75;
  String grade = 'B';
  bool isMember = true;

  // Program header
  print("==== DART DECISION-MAKING CONSTRUCTS ====");
  //-------------------------------------------------------
  // 1. Simple if statement
  //-------------------------------------------------------
  print("\n1. Simple if statement");
  if (age >= 18)
    {
      print("You are eligible to vote.");
    }

  //-------------------------------------------------------
  // 2. if-else statement
  //-------------------------------------------------------
  print("\n2. if-else statement");
  if(score >= 50)
    print("Result: Pass");
  else
    print("Result: Fail");

  //-------------------------------------------------------
  // 3. if-else-if ladder
  //-------------------------------------------------------
  print("\n3. if-else-if ladder");
  if(score >= 80)
    print("Grade: 'A'");
  else if(score >= 70)
    print("Grade: 'B'");
  else if(score >= 60)
    print("Grade: 'C'");
  else if(score >= 50)
    print("Grade: 'D'");
  else
    print("Grade: 'E'");

  //-------------------------------------------------------
  // 4. Nested if statement
  //-------------------------------------------------------
  print("\n4. Nested if statement");
  if(score >= 18)// To join a club, gym or supermarket, one should be 18 or above and a member
    {
      if(isMember)
        print("Eligible for member discount.");
      else
        print("Eligible, but no member discount");
    }
  else
    print("Not eligible.");
  //-------------------------------------------------------
  // 5. Switch statement
  //-------------------------------------------------------
  print("\n5. Switch statement");
  switch(grade)
  {
    case 'A':
      print("Excellent performance");
      break;
    case 'B':
      print("Good performance");
      break;
    case 'C':
      print("Average performance");
      break;
    case 'D':
      print("Below average performance");
      break;
      default:
        print("Poor performance");
        break;
  }
  //-------------------------------------------------------
  // 6. Ternary operator
  //-------------------------------------------------------
  print("\n6. Ternary operator");
  String votingStatus =
  (age >= 18) ? "Eligible to vote" : "Not eligible to vote";
  print(votingStatus);

  //-------------------------------------------------------
  // 7. Null-Aware Conditional Operator
  //-------------------------------------------------------
  print("\n7. Null-Coalescing Operator");
  String? username;
  String displayName = username ?? "Guest";
  print("Welcome, $displayName");

  print("\n==== END OF DART DECISION MAKING CONSTRUCTS DEMONSTRATION ====");
}