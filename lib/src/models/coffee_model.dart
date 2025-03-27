import 'package:coffe_shop_app/src/models/product_model.dart';

enum Tempareture { hot, cold, both }

enum DrinkSize { small, medium, large }

class CoffeeDrink extends Product {
  final Tempareture tempareture;
  final Map<DrinkSize, double> prices;

  CoffeeDrink({
    required super.id,
    required super.name,
    required super.category,
    required this.tempareture,
    required this.prices,
    super.imagePath,
    super.description,
    super.rating,
  });
}
