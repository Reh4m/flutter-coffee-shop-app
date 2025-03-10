import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductSizeOptionsWidget extends StatefulWidget {
  const ProductSizeOptionsWidget({super.key});

  @override
  State<ProductSizeOptionsWidget> createState() =>
      _ProductSizeOptionsWidgetState();
}

class _ProductSizeOptionsWidgetState extends State<ProductSizeOptionsWidget> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: const TextStyle(
              color: LightTheme.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 15,
            children: [
              _sizeOptionWidget(0, 'S'),
              _sizeOptionWidget(1, 'M'),
              _sizeOptionWidget(2, 'L'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _sizeOptionWidget(int index, String size) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Card(
          color: index == selectedIndex ? Color(0xFFF9F2ED) : Colors.white,
          margin: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color:
                  index == selectedIndex
                      ? LightTheme.primaryColor
                      : LightTheme.lightGrey,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                size,
                style: TextStyle(
                  color:
                      index == selectedIndex
                          ? LightTheme.primaryColor
                          : LightTheme.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
