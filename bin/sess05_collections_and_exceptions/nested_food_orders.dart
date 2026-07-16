/*
* Dart program to demonstrate nested collections.
* Author: Theo
* Description: This program demonstrates nested collections in Dart, simulating
* a restaurant where customers order different food items.
* Each customer is represented by a Map containing:
*   - Customer name
*   - Country
*   - A nested list of food items ordered.
*
* The program then traverses the nested collections and displays each customer's
* order in a clear and readable format.
*
* Date: 2026-07-02
*/
void main() {
  /// A list containing restaurant customers.
  ///
  /// Each customer is stored as a map.
  /// The 'orders' key contains another List, making this a nested collection.
  List<Map<String, dynamic>> customers = [
    {
      "name": "Amina Hassan",
      "country": "Kenya",
      "orders": [
        "Nyama Choma",
        "Ugali",
        "Kachumbari"
      ]
    },
    {
      "name": "John Okello",
      "country": "Uganda",
      "orders": [
        "Luwombo",
        "Matoke",
        "Fresh Juice"
      ]
    },
    {
      "name": "Neema Mushi",
      "country": "Tanzania",
      "orders": [
        "Pilau",
        "Mishkaki",
        "Chai"
      ]
    },
    {
      "name": "Jean Uwimana",
      "country": "Rwanda",
      "orders": [
        "Brochettes",
        "Isombe",
        "Plantains"
      ]
    },
    {
      "name": "Abdi Nur",
      "country": "Somalia",
      "orders": [
        "Bariis",
        "Suqaar",
        "Camel Milk"
      ]
    },
  ];

  print("=====================================================");
  print(" EAST AFRICAN RESTAURANT CUSTOMER ORDERS");
  print("=====================================================");

  // Loop through every customer
  for (var customer in customers)
  {
    print("Customer   : ${customer["name"]}");
    print("Country    : ${customer["country"]}");
    print("Orders     : ");

    // Retrieve the nested list of food items
    List<String> orders = List<String>.from(customer["orders"]);

    // Display each ordered food item
    for (int i = 0; i < orders.length; i++)
      print("  ${i + 1}. ${orders[i]}");

    print("------------------------------------------------------");
  }

}