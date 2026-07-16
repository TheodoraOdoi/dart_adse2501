/*
 * Dart program to demonstrate sets and maps.
 * Author: Theo
 * Description: This program demonstrates Dart sets and maps.
 * Date: 2026-07-01
 */

void main()
{
  // ============================================================
  // 1. Dart Sets
  // ============================================================
  print('\n---- 1. Dart Sets ----');

  // Create a set of fruits
  Set<String> fruits = {'Orange','Avocado','Apricot','Banana'};
  Set<String> tropicalFruits = {'Mango','Pineapple','Coconut'};
  Set<int> primeNumbers = {2,3,5,7,11};

  // Basic set properties
  print("===== Basic set properties =====");
  print("Fruit set:\n$fruits");
  print("First fruit: ${fruits.first}"); // No guaranteed order (sets are unordered, unlike lists)
  print("Fruit set length: ${fruits.length}");
  print('Check whether "Apple" is in the fruit set: ${fruits.contains("Apple")}');
  print('Check whether "Avocado" is in the fruit set: ${fruits.contains("Avocado")}');
  print('Is the fruit set empty? ${fruits.isEmpty}');

  // Add elements (fruits) to the fruit set
  print("\n===== Adding elements (fruits) to the 'fruit' set =====");
  fruits.add('Grape');
  fruits.add("Apple");
  print("After adding 'grape' & 'apple':\n$fruits");

  // Add a duplicate fruit
  fruits.add("Avocado");
  print("After adding duplicate 'avocado':\n$fruits");

  // Add multiple elements (fruits)
  fruits.addAll({'Kiwi','Pear'});
  print('After calling/invoking "addAll()":\n$fruits');

  // Remove element(s) (fruit(s))
  print("\n===== Removing Element (fruit) from the 'fruit' set =====");
  fruits.remove('Banana');
  print('After removing "Banana":\n$fruits');

  // Set operations
  print('\n--- Set Operations ---');
  print('Union: ${fruits.union(tropicalFruits)}');
  print('Intersection: ${fruits.intersection(tropicalFruits)}');
  print('Difference: ${fruits.difference(tropicalFruits)}');

  // Checking relationships
  print('\n--- Set Relationships ---');
  print('Contains all tropical? ${fruits.containsAll(tropicalFruits)}');
  print('Is disjoint? ${fruits.intersection(tropicalFruits).isEmpty}');

  // Looping through sets
  print('\n--- Looping Through Set ---');
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  // Converting to list
  print('\n--- Conversion ---');
  List<String> fruitList = fruits.toList();
  print('As list: $fruitList');

  // Set from list (removes duplicates)
  List<String> duplicates = ['apple', 'apple', 'banana'];
  Set<String> uniqueFruits = Set.from(duplicates);
  print('From list with duplicates: $uniqueFruits');

  // ====================================
  // 2. MAPS
  // ====================================

  print('\n\n---------------- MAP OPERATIONS ----------------\n');

  // Creating maps
  Map<String, int> inventory = {
    'apples': 5,
    'bananas': 10,
    'oranges': 7
  };

  Map<int, String> statusCodes = {
    200: 'OK',
    404: 'Not Found',
    500: 'Server Error'
  };

  // Basic properties
  print('--- Basic Properties ---');
  print('Inventory map: $inventory');
  print('Keys: ${inventory.keys}');
  print('Values: ${inventory.values}');
  print('Length: ${inventory.length}');
  print('Contains key "apples"? ${inventory.containsKey('apples')}');
  print('Contains value 10? ${inventory.containsValue(10)}');

  // Accessing elements
  print('\n--- Accessing Elements ---');
  print('Number of apples: ${inventory['apples']}');
  print('Number of kiwis: ${inventory['kiwis']}'); // null if not exists

  // Adding/updating elements
  print('\n--- Adding/Updating Elements ---');
  inventory['kiwis'] = 3; // Add new
  print('After adding kiwis: $inventory');

  inventory['bananas'] = 15; // Update existing
  print('After updating bananas: $inventory');

  // Update if exists
  inventory.update('apples', (value) => value + 2);
  print('After updating apples: $inventory');

  // Update with default if not exists
  inventory.update('pears', (value) => value + 1, ifAbsent: () => 4);
  print('After updating pears: $inventory');

  // Removing elements
  print('\n--- Removing Elements ---');
  inventory.remove('oranges');
  print('After removing oranges: $inventory');

  inventory.removeWhere((key, value) => value < 5);
  print('After removing items with quantity < 5: $inventory');

  // Looping through maps
  print('\n--- Looping Through Map ---');
  inventory.forEach((key, value) {
    print('$key: $value');
  });

  // Map transformations
  print('\n--- Map Transformations ---');
  var discounted = inventory.map((key, value) {
    return MapEntry(key, value - 1); // Apply 1 unit discount
  });
  print('Discounted inventory: $discounted');

  // Converting to other collections
  print('\n--- Conversion ---');
  List<String> itemNames = inventory.keys.toList();
  List<int> quantities = inventory.values.toList();
  print('Item names: $itemNames');
  print('Quantities: $quantities');

  // Creating map from other collections
  List<String> products = ['laptop', 'phone', 'tablet'];
  List<double> prices = [999.99, 699.99, 399.99];
  Map<String, double> productMap = Map.fromIterables(products, prices);
  print('Product map: $productMap');
}