import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class TimeLeftWidget extends StatelessWidget {
  const TimeLeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '10 minutes left',
          style: TextStyle(
            color: LightTheme.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: LightTheme.textLightColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(text: 'Delivery to '),
              TextSpan(
                text: 'John Doe',
                style: TextStyle(
                  color: LightTheme.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
