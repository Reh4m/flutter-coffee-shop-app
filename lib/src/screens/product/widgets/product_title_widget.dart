import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductTitleWidget extends StatelessWidget {
  const ProductTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Card(
            color: Colors.transparent,
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Column(
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
                const SizedBox(height: 8),
                Text(
                  'Ice/Hot',
                  style: const TextStyle(
                    color: LightTheme.textLightColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            spacing: 15,
            children: [
              _productFeatureWidget(icon: Icons.delivery_dining),
              _productFeatureWidget(icon: Icons.coffee_maker),
              _productFeatureWidget(icon: Icons.water_drop_rounded),
            ],
          ),
        ],
      ),
    );
  }

  Widget _productFeatureWidget({required IconData icon}) {
    return Card(
      color: Color.fromRGBO(237, 237, 237, 0.35),
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(child: Icon(icon, color: LightTheme.primaryColor)),
      ),
    );
  }
}
