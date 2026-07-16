/*
* Dart program to demonstrate collections if and for.
* Author: Theo
* Description: This program demonstrates
*  - Collection if: conditional inclusion of elements in a list
*  - Collection for: generating list content with a for loop
*
* Date: 2026-07-03
*/

// Import required classes
import 'package:dart_adse2501/sess05_nested_collection_classes/user.dart';
import 'package:dart_adse2501/sess05_nested_collection_classes/product.dart';

void main()
{
  // ================================================================
  // 1. Collection-if with Lists
  // ================================================================
  print("===== 1. Collection-if with Lists =====");
  bool includeExtraItems = true;
  bool isPremiumUser = false;

  // Basic list with conditional elements
  List<String> menuItems = [
    'Home',
    'Products',
    'About Us',
    if (includeExtraItems) 'Special Offers',
    if (isPremiumUser) 'Premium Dashboard',
    'Contact',
  ];

  print('Menu Items: $menuItems');

  // With else-like behaviour using spread
  bool showDiscount = false;
  List<String> pricingOptions = [
    'Standard: Kes. 1300',
    'Pro: Kes. 2600',
    if (showDiscount)...[
      'Discount: Kes. 650',
      'Limited Time Only!',
    ],
    'Enterprise: Contact Us',
  ];

  print("\nPricing Options: $pricingOptions");

  // ================================================================
  // 2. Collection-for with Lists
  // ================================================================
  print("\n===== 2. Collection-for with Lists =====\n");

  List<int> numbers = [1, 2, 3, 4, 5];

  // Create a new list with transformed elements
  List<String> squaredNumbers = [
    'Original Numbers: $numbers',
    'Squared Numbers:',
    for (var num in numbers) '${num * num}',
  ];

  print('Squared Numbers List: ');
  squaredNumbers.forEach(print);

  // Complex transformation with conditions
  List<String> userRoles = ['admin', 'editor', 'viewer', 'guest'];

  List<String> roleDescriptions = [
    for (var role in userRoles)
      if (role == 'admin') 'Administrator - Full Access'
      else if (role == 'editor') 'Editor - Can edit content'
      else if (role == 'viewer') 'Viewer - Read only'
        else 'Unknown role',
  ];

  // ================================================================
  // 3. Combining collection-if and collection-for
  // ================================================================
  print("\n===== 3. Combining collection-if and collection-for =====\n");

  bool filterEvenNumbers = true;

  List<int> processNumbers = [
    for (var num in numbers)
      if (!filterEvenNumbers || num % 2 == 0) num * 2
  ];

  print('Processed Numbers (even only if filter enabled): $processNumbers');

  // ================================================================
  // 4. Sets with Collection-if and Collection-for
  // ================================================================
  print("===== 4. Sets with Collection-if and Collection-for =====");
  bool includeSpecialItems = true;

  Set<String> productTags = {
    'electronics',
    'sale',
    if (includeSpecialItems) 'limited-edition',
    for (var role in userRoles) 'role -$role',
  };
  print('Product Tags: $productTags');

  // ================================================================
  // 5. Maps with Collection-if and Collection-for
  // ================================================================
  print("\n===== 5. Maps with Collection-if and Collection-for =====\n");

  bool includeAdminFeatures = true;

  Map<String, int> featureFlags = {
    'darkMode':1,
    'notifications':1,
    if (includeAdminFeatures) 'adminPanel':1,
    for (var n = 0; n < 3; n++) 'feature_$n':n,
  };

  // ================================================================
  // 6. Real-World Example: User Dashboard
  // ================================================================
  print("\n===== 6. Real-World Example: User Dashboard =====\n");

  final currentUser = User("Abigail","admin", true, ["create", "edit", "delete"]);
  final showExperimentalFeatures = true;
  final isHolidaySeason = false;

  // Build dashboard items based on user properties
  List<String> dashboardItems = [
    'Welcome ${currentUser.name}',
    'Profile',
    'Settings',
    if (currentUser.role == 'admin') 'Admin Panel',
    if (currentUser.isActive) 'Activity Log',
    if (showExperimentalFeatures)...[
      'Experimental Features',
      'Beta Tools'
    ],
    if(isHolidaySeason) 'Holiday Specials',
    for (var permission in currentUser.permissions)
      if (permission == 'edit') 'Advanced Editor'
      else if (permission == 'delete') 'Content Remover'
      else permission, 'Help'
  ];

  print('Dashboard Items for ${currentUser.name}');
  dashboardItems.forEach((item) => print(' - $item'));

  // ================================================================
  // 7. Advanced/Complex Example: Product Catalogue
  // ================================================================
  print("\n===== 7. Advanced/Complex Example: Product Catalogue =====\n");

  List<Product> products = [
    Product('p1','Laptop',130000.00, true,['electronics','premium']),
    Product('p2','Smartphone',90500.00, true,['electronics','mobile']),
    Product('p3','Headphones',19650, false, ['electronics','audio']),
    Product('p4','Desk', 26000, true, ['furniture']),
    Product('p5','Chair',19650, true, ['furniture','ergonomic']),
  ];

  bool showOnlyElectronics = true;
  bool showOutOfStock = false;
  bool applyDiscount = true;

  // Build product display list with conditions
  List<Map<String, dynamic>> productDisplay = [
    for (var product in products)
      if ((!showOnlyElectronics || product.categories.contains('electronics')) &&
          (showOutOfStock || product.inStock))
        {
          'name': product.name,
          'price': applyDiscount && product.categories.contains('premium')
              ? product.price * 0.9 // 10% discount
              : product.price,
          'status': product.inStock ? 'In Stock' : 'Out of Stock',
          'categories': [
            for (var category in product.categories)
              if (category != 'premium') category.toUpperCase(),
          ],
        },
  ];

  print('Filtered Product Catalog:');
  productDisplay.forEach((product) {
    print('${product['name']} - \$${product['price'].toStringAsFixed(2)}');
    print('  Status: ${product['status']}');
    print('  Categories: ${product['categories']}');
    print('---');
  });
}