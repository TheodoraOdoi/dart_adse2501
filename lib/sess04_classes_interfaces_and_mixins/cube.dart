
import 'dart:math';

import 'square.dart';

/// Returns the cube root of the specified [volume].
///
/// If [volume] is negative, the function returns `0`.
double _cubeRoot(double volume) => volume >= 0 ? pow(volume,1/3).toDouble() : 0;

/// Represents a cube.
///
/// A [Cube] is a three-dimensional solid consisting of six equal square faces.
/// This class extends [Square], inheriting its side length and colour
/// properties, together with its area and perimeter methods.
///
/// A cube can be created:
/// - by specifying the length of one side;
/// - from its volume; or
/// - as a unit cube with a side length of 1 cm.
class Cube extends Square
{
  /// Create a cube with the specified [side] length.
  Cube(double side): super(side);

  // Cube.fromVolume(double volume, String colour): super( _cubeRoot(volume));

  /// Creates a cube from its [volume].
  ///
  /// The side length is calculated as the cube root of the volume.
  ///
  /// If [volume] is negative, the side length is set to `0`.
  ///
  /// The [colour] parameter is provided so that the caller may specify
  /// the cube's colour after construction.
  Cube.fromVolume(double volume, String colour)
      : super(_cubeRoot(volume)) {
    setColour(colour);
  }

  /// Creates a unit cube.
  ///
  /// The default side length is **1.0 cm**.
  Cube.unit(): super(1.0);

  /// Returns the total surface area of the cube.
  ///
  /// Formula:
  /// `6 × side²`
  double surfaceArea() => 6 * side * side;

  /// Returns the volume of the cube.
  ///
  /// Formula:
  /// `side³`
  ///
  /// This implementation reuses the inherited [area] method from
  /// [Square] and multiplies it by the side length.
  double volume() => super.area() * side;

  /// Returns a formatted description of the cube.
  ///
  /// The returned string includes:
  /// - side length;
  /// - colour;
  /// - surface area; and
  /// - volume.
  @override
  String toString()
  {
    return  "Cube's side: $side cm."
        "\nCube's Colour: $colour"
        "\nCube's Surface Area: ${surfaceArea()} cm²"
        "\nCube's Volume: ${volume()} cm³";
  }


}