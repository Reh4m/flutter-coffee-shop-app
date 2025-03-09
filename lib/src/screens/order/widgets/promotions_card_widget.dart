import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class PromotionsCardWidget extends StatelessWidget {
  const PromotionsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Color(0xFFEDEDED), width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            _buildIcon(Icons.percent_rounded, LightTheme.primaryColor, 25),
            const SizedBox(width: 15),
            _buildText(
              '1 Discount is Applies',
              LightTheme.textColor,
              16,
              FontWeight.w600,
            ),
            const Spacer(),
            _buildIcon(
              Icons.arrow_forward_ios_rounded,
              const Color(0xFF2A2A2A),
              20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, Color color, double size) {
    return Icon(icon, color: color, size: size);
  }

  Widget _buildText(
    String text,
    Color color,
    double fontSize,
    FontWeight fontWeight,
  ) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
