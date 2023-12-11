void main() {
  // create a Dart list
  List<Map<String, dynamic>> fruits = [
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Papaya', 'color': 'Yellow', 'price': 6.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
    {'name': 'Orange', 'color': 'Orange', 'price': 2.0},
  ];

  // displayFruitDetails function
  print("Original Fruit Details before Discount :");
  displayFruitDetails(fruits);

  // this function update the price by applying the discount
  applyPriceDiscount(fruits, 10);

  // display the updated fruit details
  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

// displayFruitDetails() function
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

// applyPriceDiscount() function
void applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    // calculate the discounted price
    double discountedPrice =
        fruit['price'] - (fruit['price'] * discountPercentage / 100);

    // update the 'price' attribute with the discounted price
    fruit['price'] = discountedPrice;
  }
}
