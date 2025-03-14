import 'package:coffe_shop_app/src/models/category_model.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? LightTheme.primaryColor : Color(0xFFEDEDED),
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
    );
  }
}
