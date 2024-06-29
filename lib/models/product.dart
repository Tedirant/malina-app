import 'dart:ui';

class Product {
  final int id;
  final String title;
  final Color color;
  final int price;
  final String imagePath;
  int quantity = 1;

  Product(this.id, this.title, this.color, this.price, this.imagePath);
}
