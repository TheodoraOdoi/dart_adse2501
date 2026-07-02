/*
 * Dart program to demonstrate assignment operators.
 * Author: Theo
 * Description: This program demonstrates the various Dart assignment operators.
 * Date: 2026-06-25
 */

void main()
{
  // Program header
  print("==== DART ARITHMETIC OPERATORS ====");
  // Variables to be used in the program
  // 1. Assignment
  num a = 10;
  print('Assignment: a = $a');

  // 2. Add and assign
  a += 5; // Equivalent to a = a + 5
  print('Add and assign: a += 5 -> a = $a');

  // 3. Subtract and assign
  a -=3; // Equivalent to a = a - 3
  print('Subtract and assign: a -= 3 -> a = $a');

  // 4. Multiply and assign
  a *= 2; // Equivalent to a = a * 2
  print('Multiply and assign: a *= 2 -> a = $a');

  // 5. Modulus and assign
  a /= 4; // Equivalent to a = a / 4
  print('Modulus and assign: a /= 4 -> a = $a');

  // 6. Divide and assign (integer division)
  int b = 10;
  b ~/=3; // Equivalent to b = b ~/ 3
  print('Divide and assign: b ~/= 3 -> b = $b');

  // 7. Mod and assign
  a %= 3; // Equivalent to a = a % 3
  print('Mod and Assign: a %= 3 -> a = $a');

  // 8. Left shift and assign
  int c = 5; // Binary: 101
  c <<= 1; // Equivalent to c = c << 1 (left shift by 1)
  print('Left Shift and Assign: c <<= 1 -> c = $c');

  // 9. Right shift and assign
  c >>= 1; // Equivalent to c = c >> 1 (right shift by 1)
  print('Right Shift and Assign: c >>= 1 -> c = $c');

  // 10. Bitwise AND assign
  int d = 6; // Binary: 110
  d &= 3; // Binary: 011; Result of 110 & 011 = 010
  print('Bitwise AND Assign: d &= 3 -> d = $d');

  // 11. Bitwise exclusive OR assign
  d ^= 5; // Binary: 010 XOR 101 = 111
  print('Bitwise XOR Assign: d ^= 5 -> d = $d');

  // 12. Bitwise inclusive OR assign
  d |= 2; // Binary: 111 OR 010 = 111
  print('Bitwise OR Assign: d |= 2 -> d = $d');


  print("\n==== END OF DART ASSIGNMENT OPERATORS DEMONSTRATION ====");

}