/*
 * Dart program to demonstrate looping constructs.
 * Author: Theo
 * Description: This program demonstrates the various Dart looping constructs.
 * Date: 2026-06-25
 */

// Import the square and cube classes
import 'package:dart_adse2501/sess04_classes_interfaces_and_mixins/square.dart';
import 'package:dart_adse2501/sess04_classes_interfaces_and_mixins/cube.dart';

void main()
{
  // Program header
  print("==== DART OOP CONCEPTS ====");
  // ------------------------------------------------------------------
  // 1. Default Square
  // ------------------------------------------------------------------
  print('\n---- Create a square using Default Square() Constructor ----');
  var square = Square(4);
  square.setColour("Red");
  print(square);

  // ------------------------------------------------------------------
  // 2. Unit Square
  // ------------------------------------------------------------------
  print('\n---- Create a square using Unit Square() Constructor ----');
  var unitSquare = Square.unit();
  unitSquare.setColour("Purple");
  print(unitSquare);

  // ------------------------------------------------------------------
  // 3. Square from area
  // ------------------------------------------------------------------
  print('\n---- Create a square using Unit Square() Constructor ----');
  var squareFromArea = Square.unit();
  squareFromArea.setColour("Magenta");
  print(squareFromArea);

  // ------------------------------------------------------------------
  // 4. Default Cube
  // ------------------------------------------------------------------
  print('\n---- Create a cube using Default Cube() Constructor ----');
  var cube = Cube(5);
  cube.setColour("Indigo");
  print(cube);

  // ------------------------------------------------------------------
  // 5. Unit Cube
  // ------------------------------------------------------------------
  print('\n---- Create a square using Unit Square() Constructor ----');
  var unitCube = Cube.unit();
  unitCube.setColour("Blue");
  print(unitCube);

  // ------------------------------------------------------------------
  // 6. Cube from volume
  // ------------------------------------------------------------------
  print('\n---- Create a square using Unit Square() Constructor ----');
  var cubeFromVolume = Cube.fromVolume(27, "yellow");
  cubeFromVolume.setColour("Magenta");
  print(cubeFromVolume);



  print("==== END OF DART OOP CONCEPTS DEMONSTRATIONS ====");
}