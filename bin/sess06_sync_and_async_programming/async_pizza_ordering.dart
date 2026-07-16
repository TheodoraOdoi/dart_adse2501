/*
* Dart program to demonstrate asynchronous programming for tasks with delays.
* Author: Theo
* Description: This program simulates ordering a pizza using Future, async, await,
* and .then(). This demonstrates programming for tasks with delays, such as
* placing an order, waiting for it to be prepared, and delivered.
*
* Date: 2026-07-06
*/

// Import required modules/libraries
import 'dart:math';

void main()
{
  print("🍕 Welcome to Dart Pizzeria! 🍕");

  // Using then() for basic Future handling
  placeOrder("Pepperoni").then((orderNumber)
  {
    print("Order #$orderNumber is ready for pickup!");
  }).catchError((error)
  {
    print("❌ Order failed: $error");
  });

  // Using async/await for more readable code
  processMultipleOrders();
}

/// Place an order for a pizza and returns a Future<int> representing the order number.
/// [pizzaType] The type of pizza ordered.
Future<int> placeOrder(String pizzaType) async
{
  print("\nPlacing order for $pizzaType...");

  try
  {
    // Simulate async steps in pizza preparation
    await checkIngredients(pizzaType);
    final prepTime = await preparePizza(pizzaType);
    await deliverPizza();

    // Generate a random order number
    final orderNumber = Random().nextInt(90000) + 10000;
    return orderNumber;
  }catch(e)
  {
    print("❌ Error in order processing:\n$e");
    throw Exception("Failed to complete order for $pizzaType");
  }
}

/// Checks if pizza ingredients are available (simulated async operation).
/// [pizzaType] The type of pizza ordered.
Future<void> checkIngredients(String pizzaType)
{
  return Future.delayed(const Duration(seconds: 1),(){
    if(pizzaType == "Anchovy" && Random().nextDouble() > 0.3)
    {
      throw Exception("Sorry, we're out of $pizzaType");
    }
    print("✔ Ingredients for $pizzaType pizza are available!");
  });
}

/// Prepares the pizza and returns the time taken.
/// [pizzaType] The type of pizza ordered.
Future<int> preparePizza(String pizzaType)
{
  final prepTime = Random().nextInt(5) + 2; // Between 2 - 6 seconds

  return Future.delayed(Duration(seconds: prepTime), ()
  {
    print("👩🏾‍🍳 Prepared $pizzaType pizza in $prepTime seconds");
    return prepTime;
  });
}

/// Simulates pizza delivery (async operation)
Future<void> deliverPizza()
{
  return Future.delayed(const Duration(seconds: 3), ()
  {
    print("🛵 Pizza delivered to customer!");
  });
}

// Demonstrate handling multiple orders with async/await
Future<void> processMultipleOrders() async
{
  print("\nProcessing multiple orders...");

  try
  {
    // Process orders concurrently
    final order1 = placeOrder("Margherita");
    final order2 = placeOrder("Pepperoni");
    final order3 = placeOrder("Anchovy"); // Might fail

    // Wait for all orders to complete
    final results = await Future.wait([order1, order2, order3],eagerError: true);

    print("\nAll orders completed successfully:");
    print("Completed order numbers:\n${results.join(', ')}");
  }catch(e)
  {
    print("❌ Some orders failed:\n$e");
    print("Other order may have completed successfully");
  }

  // Sequential processing example
  print("\nProcessing orders sentially...");
  await placeOrder("Hawaiian");
  await placeOrder("BBQ Chicken");
}