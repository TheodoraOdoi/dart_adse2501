/*
 * Dart program to demonstrate nested collections.
 * Author: Theo
 * Description: This program demonstrates nested collections in Dart, i.e.,
 * - A List of customers
 * - Each Customer has a list of orders
 * - Each customer has a list of items
 * Date: 2026-07-02
 */

// Import the required class files from the 'lib' folder
import 'package:dart_adse2501/sess05_nested_collection_classes/customer.dart';
import 'package:dart_adse2501/sess05_nested_collection_classes/order.dart';
import 'package:dart_adse2501/sess05_nested_collection_classes/items.dart';

void main()
{
  // Sample Data
  List<Customer> customers = [
    Customer(
      id: 1,
        name: 'Abigail',
        orders: [
          Order(orderId: 1001, items: [
            Item(name: 'Laptop', quantity: 1, price: 155000.0),
            Item(name: 'Mouse', quantity: 2, price: 3200.0)
          ]),
          Order(orderId: 1002, items: [
            Item(name: 'Keyboard', quantity: 1, price: 10000.0)])
          ]
    ),
    Customer(id: 2, name: 'Brian', orders: [
      Order(orderId: 1003, items: [
        Item(name: 'Smartphone', quantity: 1, price: 117000.0),
        Item(name: 'Phone Case', quantity: 1, price: 2600.0)
      ])
    ]),
    Customer(id: 3, name: 'Jane', orders: [
      Order(orderId: 1004, items: [
        Item(name: 'Handbag', quantity: 3, price: 8400.0),
        Item(name: 'Shoes', quantity: 5, price: 4500.0),
        Item(name: 'Jeans', quantity: 6, price: 10000.0)
      ])
    ]),
  ];

  // Display customer orders
  for(var customer in customers)
    {
      print('Customer: ${customer.name} (ID: ${customer.id}');
      for(var order in customer.orders)
        {
          print('   Order ID: ${order.orderId}');
          for(var item in order.items)
            {
              print('     - ${item.name} x ${item.quantity} @ Kes. ${item.price.toStringAsFixed(2)}');
            }
          print('    Order Total: Kes.  ${order.totalAmount().toStringAsFixed(2)}');
        }
      print('');
    }
}