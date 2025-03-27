import 'package:coffe_shop_app/src/models/category_model.dart';

abstract class Product {
  final int id;
  final String name;
  final Category category;
  final String? description;
  final String? imagePath;
  final double? rating;

  Product({
    required this.id,
    required this.name,
    required this.category,
    this.description,
    this.imagePath,
    this.rating,
  });
}
