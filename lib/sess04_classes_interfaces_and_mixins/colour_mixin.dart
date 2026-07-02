// Mixin that will be used to colour shapes

/// A mixin that provides colour-related functionality to a class.
///
/// The [ColourMixin] allows a class to store, update and display a colour.
/// Classes that include this mixin gain a [colour] property, together with
/// methods for setting and displaying the colour.
///
/// Example:
/// ```dart
/// class Car with ColourMixin {}
///
/// void main()
/// {
///   Car car = Car();
///   car.setColour("Red");
///   car.displayColour();
/// }
/// ```
///
/// Output:
/// ```
/// Colour: Red
/// ```

mixin ColourMixin
{
  /// The current colour of the object.
  ///
  /// Defaults to `"Not set"`, until a value is assign using the [setColour] method.
  String colour = "Not set";

  /// Sets the current colour.
  ///
  /// The [colour] parameter is the new colour to be assigned/set.
  void setColour(String colour)  {  this.colour = colour;  }

  /// Displays the current colour on the console.
  ///
  /// The output is  in the format:
  /// ```
  /// Colour: <colour>
  /// ```
  void displayColour() {    print("Colour: $colour");  }
}