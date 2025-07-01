import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductOverviewWidget extends StatelessWidget {
  const ProductOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Caffe Mocha',
              style: const TextStyle(
                color: LightTheme.textColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Ice/Hot',
              style: const TextStyle(
                color: LightTheme.textLightColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          spacing: 15,
          children: [
            _productFeature(icon: Icons.delivery_dining),
            _productFeature(icon: Icons.coffee_maker),
            _productFeature(icon: Icons.water_drop_rounded),
          ],
        ),
      ],
    );
  }

  Widget _productFeature({required IconData icon}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED).withAlpha(150),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, size: 20, color: LightTheme.primaryColor),
    );
  }
}
