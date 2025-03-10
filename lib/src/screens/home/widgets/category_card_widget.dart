import 'package:coffe_shop_app/src/models/category_model.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:coffe_shop_app/src/themes/theme.dart';
import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  final int selectedCategory = 0;

  const CategoryCardWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Card(
          color:
              category.id == selectedCategory
                  ? AppTheme.lightTheme.primaryColor
                  : Color.fromRGBO(237, 237, 237, 0.35),
          margin: const EdgeInsets.all(0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                category.name,
                style: TextStyle(
                  color:
                      category.id == selectedCategory
                          ? Colors.white
                          : LightTheme.textColor,
                  fontWeight:
                      category.id == selectedCategory
                          ? FontWeight.w600
                          : FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
