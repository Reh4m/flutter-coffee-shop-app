import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class SpacerLineWidget extends StatelessWidget {
  const SpacerLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 60, right: 60),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: LightTheme.lightGrey,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Container(height: 1, color: LightTheme.lightGrey),
      ),
    );
  }
}
