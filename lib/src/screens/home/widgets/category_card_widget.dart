import 'package:coffe_shop_app/src/models/category_model.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  final bool isSelected;

  const CategoryCardWidget({
    super.key,
    required this.category,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? LightTheme.primaryColor : const Color(0xFFEDEDED),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        category.name,
        style: TextStyle(
          color: isSelected ? Colors.white : LightTheme.textColor,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
