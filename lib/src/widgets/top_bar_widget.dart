import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  final String title;
  final IconData? rightIcon;

  const TopBarWidget({super.key, required this.title, this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xFF242424),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF242424),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        rightIcon != null
            ? IconButton(
              onPressed: () {},
              icon: Icon(rightIcon),
              color: const Color(0xFF242424),
            )
            : const SizedBox(width: 44),
      ],
    );
  }
}
