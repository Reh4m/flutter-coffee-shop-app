import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _tab(icon: Icons.home_rounded, isSelected: true),
          _tab(icon: Icons.favorite_outline_rounded),
          _tab(icon: Icons.shopping_bag_outlined),
          _tab(icon: Icons.notifications_none_outlined),
        ],
      ),
    );
  }

  Widget _tab({required IconData icon, bool isSelected = false}) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color:
              isSelected ? LightTheme.primaryColor : LightTheme.textLightColor,
          iconSize: 30,
        ),
        isSelected
            ? Container(
              height: 6,
              width: 14,
              decoration: BoxDecoration(
                color: LightTheme.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }
}
