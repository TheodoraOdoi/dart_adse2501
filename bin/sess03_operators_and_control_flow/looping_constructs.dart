/*
* Dart program to demonstrate looping constructs.
* Author: Theo
* Description: This program demonstrates the various looping constructs
* Date: 2026-06-29
 */
void main()
{
  // Program header
  print("==== DART LOOPING CONSTRUCTS ====");
  // ------------------------------------------------------------------
  // 1. For loop
  // ------------------------------------------------------------------
  print("\n1. for loop");
  int n = 1; //looping variable
  for(; n <= 7; n++ )
    print("Currently on iteration $n");
  // ------------------------------------------------------------------
  // 2. While loop
  // ------------------------------------------------------------------
  print("\n2. while loop");
  n = 1; // Re-assign n to 1
  while(n <= 5)
    print("n = ${n++}");

  // ------------------------------------------------------------------
  // 3. Do...While loop
  // ------------------------------------------------------------------
  print("\n3. do...while loop");
  n = 1; // Re-assign n to 1
  do
    print("n = ${n++}");
  while(n <= 5);

  // ------------------------------------------------------------------
  // 4. For...In loop
  // ------------------------------------------------------------------
  print("\n4. for...in loop");
  List<String> fruits = [
    'Apple', "Pineapple", "Mango", "Guava",'Peach',"Banana"
  ];
  for(String fruit in fruits)
    print(fruit);

  // ------------------------------------------------------------------
  // 5. forEach() method
  // ------------------------------------------------------------------
  print("\n5. forEach() method");
  fruits.forEach((fruit) => print(fruit));

  // ------------------------------------------------------------------
  // 6. break statement
  // ------------------------------------------------------------------
  print("\n6. break statement");
  n = 1;
  for(; n <= 10; n++)
  {
    if(n == 5)
    {
      print("Loop terminated at n = $n");
      break;
    }
    print("n = $n");
  }

  // ------------------------------------------------------------------
  // 7. continue statement
  // ------------------------------------------------------------------
  print("\n7. continue statement");
  n = 1;
  for(; n <= 10; n++)
  {
    if(n == 6)
    {
      print("Skipped n = $n");
      continue;
    }
    print("n = $n");
  }

  // ------------------------------------------------------------------
  // 8. Nested loops
  // ------------------------------------------------------------------
  print("\n8. Nested loops");
  for(int row = 1; row <= 3; row ++)
  {
    for(int col = 1; col <= 3; col++)
      print("Row: $row, Column: $col");
  }

  print("\n==== END OF DART LOOPING CONSTRUCTS DEMONSTRATION ====");
}