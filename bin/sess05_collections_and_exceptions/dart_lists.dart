/*
* Dart program to demonstrate lists.
* Author: Theo
* Description: This program demonstrates dart lists.
* Date: 2026-07-01
 */

// Import the dart collection library  
import 'dart:collection';

void main()
{
  //=========================================
  // 1. Create a list
  //============================================
  print("\n----1. Create a list ----");
  var list = [1, 2, 3, 4, 5];
  print(list);

  //=========================================
  // 1. Fixed-length list
  //============================================
  print("\n----2. Create a fixed-length list ----");
  List<String> fixedList = List.filled(3, ''); // Initialise with an empty string
  print('Initial fixed list: $fixedList');

  // Assign values to fixed list
  fixedList[0] = 'Avocado';
  fixedList[1] = 'Banana';
  fixedList[2] = 'Cherry';
  print('After assignment: $fixedList');

  // Try to add an element to the fixed list : will throw an error
  try
  {
    fixedList.add('Date'); // will throw an error
  } catch (e)
  {
    print('Error when adding to fixed list: ${e.runtimeType}');
    print('Message: ${e.toString()}');
  }

  // Trying to change length - throws UnsupportedError
  try
  {
    fixedList.length = 4; //will throw an error
  } catch (e)
  {
    print('Error when changing length of fixed list: ${e.runtimeType}');
    print('Message: ${e.toString()}');
  }

  //=========================================
  // 2. Growable list
  //============================================
  // Create an empty growable list
  print("\n----2. Create a growable list ----");
  List<String> growableList = [];
  print("Initial growable list: $growableList");

  // Add elements
  growableList.add("Sifa");
  growableList.add("Dennis");
  growableList.add("Safia");
  growableList.add("Theodora");
  growableList.add("Edmund");
  growableList.add("Lavender");
  growableList.add("Shion");
  growableList.add("Adan");
  growableList.add("Keagan");
  print('After adding elements (student names):\n$growableList');

  // Add multiple elements
  growableList.addAll(["Apricot", "Mango", "Elephant Apple"]);

  // Insert at a specific position/index
  growableList.insert(1, "Avocado");
  growableList.insert(3, "Blueberry");
  print("\nAfter inserting fruits:\n$growableList");

  // Remove an element from the list
  growableList.remove("Mango");

  // Remove an element at a specific position/index
  String elementAt2 = growableList[2];
  growableList.removeAt(2);
  print("\nAfter removing 'Mango' & '$elementAt2':\n$growableList");

  // Change length manually
  growableList.length = 8;
  print("\nAfter changing length manually:\n$growableList");

  // Clear the list
  growableList.clear();
  print("\nAfter clearing the list:\n$growableList");

  //=========================================
  // Conversion between list types
  //============================================
  // Create an empty growable list
  print("\n----3. Conversion between list types ----");

  // Convert growable to fixed
  List<String> convertedFixed = List.from(growableList, growable: false);
  print("Converted to fixed:\n$convertedFixed");
  try
  {
    convertedFixed.add("Grape"); // will throw an error
  } catch (e)
  {
    print('Error when adding to fixed list: ${e.runtimeType}');
  }

  // Convert fixed to growable
  List<String> convertedGrowable = List.from(fixedList,growable: true);
  print("Original fixed: $fixedList");
  print("Converted growable: $convertedGrowable");
  convertedGrowable.add("Dragon Fruit");
  print("After adding 'Dragon Fruit':\n$convertedGrowable");
}