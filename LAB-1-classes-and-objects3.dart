class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle = Rectangle(5.0, 3.0);

  double area = rectangle.calculateArea();
  print('Area: $area');

  double perimeter = rectangle.calculatePerimeter();
  print('Perimeter: $perimeter');
}

