/*
* Dart program to demonstrate reading a file asynchronously.
* Author: Theo
* Description: This program demonstrates reading and displaying the contents
* of a json file.
*
* Date: 2026-07-06
*/

// Import the required modules/libraries
import 'dart:async';
import 'dart:convert'; // library to encode and decode data (mostly json)
import 'dart:io';
import 'package:path/path.dart' as p;

// main function begins program execution
void main() async
{
  // Construct a cross-platform-safe path to the json file
  String filePath = p.join(Directory.current.path, 'data', 'burger_sales.json');

  try
  {
    final salesData = await readBurgerSales(filePath);

    print("🍔 Burger Sales Records:");
    print("==================================================");
    // Display each record
    for (var sale in salesData)
    {
      print("ID: ${sale['id']}");
      print("Date: ${sale['date']}");
      print("Location: ${['location']}");
      print("Burgers Sold: ${sale['burgers_sold']}");
      print("--------------------------------------------");
    }
    print("==================================================");
  }
  catch (e)
  {
    print("❌ Error reading file:\n$e");
  }
}

Future<List<dynamic>> readBurgerSales(String filePath) async
{
  final file = File(filePath);

  // Check if the file exists
  if(!await file.exists()) {throw Exception('File not found at:\n$filePath');}

  // Read file and decode json
  final jsonString = await file.readAsString();
  final List<dynamic> salesData = json.decode(jsonString);
  return salesData;
}