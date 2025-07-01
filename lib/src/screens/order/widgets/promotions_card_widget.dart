import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class PromotionsCardWidget extends StatelessWidget {
  const PromotionsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFEDEDED), width: 1.5),
      ),
      child: const Row(
        children: <Widget>[
          Icon(Icons.percent_rounded, color: LightTheme.primaryColor, size: 25),
          const SizedBox(width: 15),
          Text(
            '1 Discount is Applies',
            style: TextStyle(
              color: LightTheme.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xFF2A2A2A),
            size: 20,
          ),
        ],
      ),
    );
  }
}
