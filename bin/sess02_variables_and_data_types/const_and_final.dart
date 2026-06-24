// Dart program to demonstrate declaring fixed values using 'const' (compile time)
// and 'final' (runtime).
void main()
{
  // -------------------------------------------------
  // Final: Assigned once at runtime and cannot be changed. Useful when the
  // value is unknown til the program runs.
  // -------------------------------------------------------
  final currentYear = DateTime.now().year;
  print("The final value 'currentYear' is: $currentYear."
      "\nThe type inferred by dart is: ${currentYear.runtimeType}\n");

  // Uncommenting the line below causes an error
  // currentYear = 2030;

  //Final list of current students in class
  final studentAttendance = [
    'Edmund', 'Cyrus', 'Keagan', "Sifa", "Ayan",
    "Fardwosa", "Dennis", "Theodora", "Shamim",
    'Shion', 'Lavender', 'Victor', "Safia"
  ];
  print("Current students in class are: "
      "\n$studentAttendance");
  // The studentAttendance variable cannot point to another list but the
  // contents can still change.
  List<String> otherStudents = ['Jane', 'Abigail', 'Mark', "Sue"];

  studentAttendance.addAll(otherStudents);
  print("Modified student list is: "
      "\n$studentAttendance\n\n");

  // Uncommenting the line below causes an error
  // studentAttendance = ['John', 'Peter', 'Andrew', "James"];

  // -------------------------------------------------
  // Const: Assigned once at compile time and cannot be changed.
  // Useful when the value is known b4 the program starts.
  // -------------------------------------------------------
  const country = "Kenya";
  const pi = 3.141593;
  const fruits = ["Orange", "Grapes", "Lemon", "Kiwi", "Thorn Melon", "Avocado"];
  print("Contents of the 'country' value are: $country");
  print("Value of the 'pi' is: $pi");
  print("Contents of the 'fruit' const list are:\n$fruits\n");

  // The fruit list reference nor its (fruits) cannot change.

  //Uncommenting the line below causes an error
  //fruits = ["Apple", "Pineapple", "Mango", "Guava", "Peach", "Banana",
  //     "Pomegranate","Watermelon", "Orange", "Grapes", "Lemon",
  //     "Kiwi", "Thorn Melon", "Avocado",];

  // ==========================================================
// SUMMARY
// ==========================================================
  print('=== SUMMARY ===');
  print('final -> Assigned once, value determined at runtime');
  print('const -> Compile-time constant, fixed forever');
  print('final List -> Contents can change');
  print('const List -> Contents cannot change');
}