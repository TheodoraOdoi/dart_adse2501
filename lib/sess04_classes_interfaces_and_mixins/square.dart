

import 'dart:math';

import 'colour_mixin.dart';
import 'i2d_shape.dart';

/// Represents a square.
///
/// A [Square] is a two-dimensional shape with four equal sides.
/// This class implements the [I2DShape] interface and mixes in
/// [ColourMixin] to provide colour-related behaviour.
///
/// A square can be created:
/// - by specifying the length of a side;
/// - from its area; or
/// - as a unit square with a default side length of 5 cm.
class Square with ColourMixin implements I2DShape
{
  double side;

  Square(this.side);

  Square.fromArea(double area): side = area >= 0 ? sqrt(area) : 0;

  Square.unit():side = 5.0;

  @override
  double area() => side * side;// same as: double area() { return side * side; }

  @override
  double perimeter() => 4 * side;// same as: double perimeter() { return 4 * side; }

  @override
  String toString()
  {
    return "Square's side: $side cm."
        "\nSquare's Colour: $colour"
        "\nSquare's Area: ${area()} cm²"
        "\nSquare's Perimeter: ${perimeter()} cm";
  }


}