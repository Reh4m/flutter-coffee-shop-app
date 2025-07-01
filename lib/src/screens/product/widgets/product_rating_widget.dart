import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.star_rounded, color: Color(0xFFFBBE21), size: 30),
        const SizedBox(width: 5),
        Text(
          '4.5',
          style: const TextStyle(
            color: LightTheme.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          ' (125)',
          style: const TextStyle(
            color: LightTheme.textLightColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
