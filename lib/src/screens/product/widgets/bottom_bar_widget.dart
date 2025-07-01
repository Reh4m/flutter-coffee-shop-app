import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:coffe_shop_app/src/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: const TextStyle(
                  color: LightTheme.textLightColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '\$ 4.99',
                style: const TextStyle(
                  color: LightTheme.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          PrimaryButtonWidget(
            onPressed: () => Navigator.pushNamed(context, '/order'),
            text: 'Buy Now',
            width: size.width * 0.6,
          ),
        ],
      ),
    );
  }
}
