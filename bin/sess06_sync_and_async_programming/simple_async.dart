/*
* Dart program to demonstrate asynchronous programming.
* Author: Theo
* Description: This program demonstrates an asynchronous function simulating
* network request.
*
* Date: 2026-07-06
*/

// Import the required module
import 'dart:async';

// Asynchronous function to simulate network request
Future<void> fetchData() async
{
  print('Fetching data, please wait...');
  await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
  print('Data fetched successfully');
}

void main()
{
  print('Task 1');
  fetchData(); // fetchData() is an asynchronous function
  print('Task 2');
  print('Task 3');
}