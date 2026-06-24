// Dart program to demonstrate the various dart data types

void main()
{
  // int : used for whole numbers both +ve and -ve
  int age = 16;
  print("My age is: $age years old.");
  print("The 'age' variable is of type: ${age.runtimeType}\n");

  // double: used for decimal numbers  both +ve and -ve
  double height = 1.78;
  print("My height is: $height metres tall.");
  print("The 'height' variable is of type: ${height.runtimeType}\n");

  // num: used for both whole and decimal  numbers which can be +ve and -ve
  num score = 78;
  print("My score is: $score%.");
  print("The 'score' variable is of type: ${score.runtimeType}\n");

  // String: used for text
  String name = "Theo";
  print("My name is: $name.");
  print("The 'name' variable is of type: ${name.runtimeType}"
      "and has ${name.length} characters.\n");

  // boolean: used for true or false values
  bool isLoggedIn = false;
  print("Is the user logged in: $isLoggedIn.");
  print("The 'isLoggedIn' variable is of type: ${isLoggedIn.runtimeType}\n");

  // var: dart infers the type from the variable's content
 var city = "Nairobi";
  print("We are currently in $city .");
  print("The 'city' variable is inferred by dart to be of type: ${city.runtimeType}\n");

  // dynamic: variable that can change its type during program execution
  dynamic myValue = "Welcome";
  print("The initial content of 'myValue' is $myValue .");
  print("The 'myValue' variable is initially of type: ${myValue.runtimeType}\n");

  // Re-assign the value to an integer.
  myValue = 85;
  print("The 'myValue' variable has been reassigned to: $myValue."
      "\nIt's new type is: ${myValue.runtimeType}");

  // Re-assign the myValue to a boolean.
  myValue = true;
  print("The 'myValue' variable has been reassigned to: $myValue."
      "\nIt's new type is: ${myValue.runtimeType}");

  // List: an order collection of values
  List<String> fruits = ["Apple", "Pineapple", "Mango", "Guava", "Peach", "Banana",
    "Pomegranate","Watermelon", "Orange", "Grapes", "Lemon",
    "Kiwi", "Thorn Melon", "Avocado",
  ];
  print('List of fruits:\n$fruits');
  print("First fruits: ${fruits[0]}");
  print("Number of fruits: ${fruits.length}");
  print("Type of 'fruits' variable is: ${fruits.runtimeType}\n");

  // Set: collection of unique values. (doesn't allow duplicates)
  Set<String> colours = {
    "Red",
    "Blue",
    "Green",
    "Green", // intentional duplicate
  };

  print("The colour set contains:\n$colours");
  print("The number of colours in the set is: ${colours.length}");
  print("Type of 'colours' variable is: ${colours.runtimeType}");

  // Map: stores data as key-value pairs
  Map<String, String> student ={
    'name': "Theo",
    'course': "ADSE",
    'institution': "Edulink International College Nairobi",
    'current_sem':'3',
  };

  print("Student map contents:\n$student");
  print("Student's Name: ${student['name']}");
  print("Student's Current Semester: ${student['current_sem']}");
  print("The type of 'student' variable is: ${student.runtimeType}");

  // ==========================================================
  // SUMMARY
  // ==========================================================

  print('=== SUMMARY ===');
  print('int     -> Whole numbers');
  print('double  -> Decimal numbers');
  print('num     -> Integers or decimals');
  print('String  -> Text');
  print('bool    -> True or false');
  print('List    -> Ordered collection');
  print('Set     -> Unique values');
  print('Map     -> Key-value pairs');
  print('var     -> Type inferred by Dart');
  print('dynamic -> Type can change');
}