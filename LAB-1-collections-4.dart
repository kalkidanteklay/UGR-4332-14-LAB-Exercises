class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

class ShoppingCart {
  List<Product> items = [];

  void addItem(String name, double price, int quantity) {
    Product product = Product(name, price, quantity);
    items.add(product);
    print('Added $quantity $name to the cart.');
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in items) {
      totalPrice += item.price * item.quantity;
    }
    return totalPrice;
  }

  void removeItem(String name) {
    for (var item in items) {
      if (item.name == name) {
        items.remove(item);
        print('Removed $name from the cart.');
        return;
      }
    }
    print('$name not found in the cart.');
  }

  void printCart() {
    print('Shopping Cart:');
    for (var item in items) {
      print('Name: ${item.name}, Price: \$${item.price}, Quantity: ${item.quantity}');
    }
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();

  // Add items to the cart
  cart.addItem('Apple', 1.5, 3);
  cart.addItem('Banana', 0.5, 5);
  cart.addItem('Orange', 1.2, 2);

  // Print the cart
  cart.printCart();

  // Calculate and print the total price
  double totalPrice = cart.calculateTotalPrice();
  print('\nTotal Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  cart.removeItem('Banana');

  // Print the updated cart
  cart.printCart();
}