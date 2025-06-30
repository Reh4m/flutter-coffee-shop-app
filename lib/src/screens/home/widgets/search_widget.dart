import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: const BoxDecoration(
              color: LightTheme.darkGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: 100,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                icon: Icon(Icons.search, color: LightTheme.textLightColor),
                hintText: 'Search coffee',
                hintStyle: TextStyle(color: LightTheme.textLightColor),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: LightTheme.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(20),
          ),
          child: const Icon(Icons.tune, size: 24),
        ),
      ],
    );
  }
}
