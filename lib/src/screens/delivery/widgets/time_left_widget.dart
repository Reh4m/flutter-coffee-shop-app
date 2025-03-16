import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class TimeLeftWidget extends StatelessWidget {
  const TimeLeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_timeLeftText(), SizedBox(height: 5), _deliveryInfoText()],
      ),
    );
  }

  Widget _timeLeftText() {
    return Text(
      '10 minutes left',
      style: TextStyle(
        color: LightTheme.textColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _deliveryInfoText() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: LightTheme.textLightColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        children: const <TextSpan>[
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
    );
  }
}
