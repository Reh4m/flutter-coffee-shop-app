import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Location',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: LightTheme.textLightColor,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Text(
                'Bilzen, Tanjungbalai',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFD8D8D8),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.keyboard_arrow_down, color: Color(0xFFD8D8D8)),
            ],
          ),
        ],
      ),
    );
  }
}
