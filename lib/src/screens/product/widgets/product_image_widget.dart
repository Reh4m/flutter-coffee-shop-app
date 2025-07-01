import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        'assets/coffee.jpg',
        fit: BoxFit.cover,
        height: 250,
        width: size.width,
      ),
    );
  }
}
