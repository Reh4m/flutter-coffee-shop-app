import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DividerLineWidget extends StatelessWidget {
  const DividerLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: LightTheme.lightGrey,
      height: 1,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
