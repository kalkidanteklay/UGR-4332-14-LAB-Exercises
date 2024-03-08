class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product('Bag', 10.0, 5);
  double totalCost = product.calculateTotalCost();
  print('Total Cost: $totalCost');
}
