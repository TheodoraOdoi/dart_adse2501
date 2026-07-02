// Define a Customer class

// Import the order class from the order.dart file
import 'order.dart';

class Customer
{
  final int id;
  final String name;
  final List<Order> orders;

  Customer({required this.id, required this.name, required this.orders});
}