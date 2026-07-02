// Define the Order class

// Import the item class from the item.dart file
import'items.dart';

class Order
{
  final int orderId;
  final List<Item> items;

  Order({required this.orderId, required this.items});

  double totalAmount()
  {
    return items.fold(
      0.0, (sum,item) => sum + (item.quantity * item.price));
  }
}