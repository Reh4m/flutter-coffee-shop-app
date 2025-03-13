import 'package:coffe_shop_app/src/models/category_model.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:coffe_shop_app/src/themes/theme.dart';
import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  final Function(int) onCategorySelected;
  final bool isSelected;

  const CategoryCardWidget({
    super.key,
    required this.category,
    required this.onCategorySelected,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCategorySelected(category.id),
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Card(
          color:
              isSelected
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
                  color: isSelected ? Colors.white : LightTheme.textColor,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
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
