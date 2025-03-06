import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 55,
        children: [
          _icon(Icons.home_rounded, true),
          _icon(Icons.favorite_outline_rounded, false),
          _icon(Icons.shopping_bag_outlined, false),
          _icon(Icons.notifications_none_outlined, false),
        ],
      ),
    );
  }

  Widget _icon(IconData icon, bool isSelected) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color:
              isSelected ? LightTheme.primaryColor : LightTheme.textLightColor,
          iconSize: 35,
        ),
        Container(
          height: 6,
          width: 14,
          decoration: BoxDecoration(
            color: isSelected ? LightTheme.primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
