import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.pop(context),
          child: _iconContainer(Icons.arrow_back_ios),
        ),
        _iconContainer(Icons.gps_fixed_rounded),
      ],
    );
  }

  Widget _iconContainer(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(icon, color: LightTheme.textColor),
    );
  }
}
