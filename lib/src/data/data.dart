import 'package:coffe_shop_app/src/models/category_model.dart';
import 'package:coffe_shop_app/src/models/coffee_model.dart';

class Categories {
  static List<Category> categoriesList = [
    Category(id: 0, name: 'All Coffee'),
    Category(id: 1, name: 'Macchiato'),
    Category(id: 2, name: 'Latte'),
    Category(id: 3, name: 'Americano'),
    Category(id: 4, name: 'Cappuccino'),
    Category(id: 5, name: 'Espresso'),
    Category(id: 6, name: 'Mocha'),
    Category(id: 7, name: 'Affogato'),
  ];
}

class Coffees {
  static List<CoffeeDrink> coffeesList = [
    CoffeeDrink(
      id: 1,
      category: Categories.categoriesList[1],
      name: 'Caramel Macchiato',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.5,
    ),
    CoffeeDrink(
      id: 2,
      category: Categories.categoriesList[1],
      name: 'Hazelnut Macchiato',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 3.5,
    ),
    CoffeeDrink(
      id: 3,
      category: Categories.categoriesList[1],
      name: 'Vanilla Macchiato',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.8,
    ),
    CoffeeDrink(
      id: 4,
      category: Categories.categoriesList[2],
      name: 'Caramel Latte',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.9,
    ),
    CoffeeDrink(
      id: 5,
      category: Categories.categoriesList[2],
      name: 'Hazelnut Latte',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 5.0,
    ),
    CoffeeDrink(
      id: 6,
      category: Categories.categoriesList[2],
      name: 'Vanilla Latte',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 3.5,
    ),
    CoffeeDrink(
      id: 7,
      category: Categories.categoriesList[3],
      name: 'Caramel Americano',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.7,
    ),
    CoffeeDrink(
      id: 8,
      category: Categories.categoriesList[3],
      name: 'Hazelnut Americano',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.9,
    ),
    CoffeeDrink(
      id: 9,
      category: Categories.categoriesList[3],
      name: 'Vanilla Americano',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.3,
    ),
    CoffeeDrink(
      id: 10,
      category: Categories.categoriesList[4],
      name: 'Caramel Cappuccino',
      prices: {
        DrinkSize.small: 3.99,
        DrinkSize.medium: 4.99,
        DrinkSize.large: 5.99,
      },
      tempareture: Tempareture.hot,
      rating: 4.1,
    ),
  ];
}
