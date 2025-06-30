import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Location',
          style: TextStyle(fontSize: 14, color: LightTheme.textLightColor),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              'Bilzen, Tanjungbalai',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFD8D8D8),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down, color: Color(0xFFD8D8D8)),
          ],
        ),
      ],
    );
  }
}
