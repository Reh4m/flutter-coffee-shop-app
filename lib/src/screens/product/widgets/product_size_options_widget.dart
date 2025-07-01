import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductSizeOptionsWidget extends StatelessWidget {
  const ProductSizeOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Size',
          style: const TextStyle(
            color: LightTheme.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 15,
          children: [
            _sizeOption(size: 'S', price: 3.99),
            _sizeOption(size: 'M', price: 4.99, isSelected: true),
            _sizeOption(size: 'L', price: 5.99),
          ],
        ),
      ],
    );
  }

  Widget _sizeOption({
    required String size,
    required double price,
    bool isSelected = false,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF9F2ED) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? LightTheme.primaryColor : LightTheme.lightGrey,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color:
                  isSelected ? LightTheme.primaryColor : LightTheme.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
