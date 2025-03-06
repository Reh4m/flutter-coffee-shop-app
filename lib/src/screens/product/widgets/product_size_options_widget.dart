import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductSizeOptionsWidget extends StatelessWidget {
  const ProductSizeOptionsWidget({super.key});

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
              _sizeOptionWidget('S', 'Small', false),
              _sizeOptionWidget('M', 'Medium', true),
              _sizeOptionWidget('L', 'Large', false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _sizeOptionWidget(String size, String title, bool isSelected) {
    return Expanded(
      child: Card(
        color: isSelected ? Color.fromRGBO(198, 124, 78, 0.1) : Colors.white,
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: isSelected ? LightTheme.primaryColor : LightTheme.lightGrey,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              size,
              style: TextStyle(
                color:
                    isSelected ? LightTheme.primaryColor : LightTheme.textColor,
                fontSize: 18,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
