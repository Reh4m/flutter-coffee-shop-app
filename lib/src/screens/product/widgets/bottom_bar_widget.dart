import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => BottomBarWidgetState();
}

class BottomBarWidgetState extends State<BottomBarWidget> {
  double _beginAmount = 4.99;
  double _targetAmount = 4.99;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.transparent,
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: const TextStyle(
                    color: LightTheme.textLightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: _beginAmount, end: _targetAmount),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                  builder:
                      (context, value, child) => Text(
                        '\$ ${value.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: LightTheme.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () => Navigator.pushNamed(context, '/order-details'),
            minWidth: 0,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: LightTheme.primaryColor,
            child: Text(
              'Buy Now',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updatePrice(double newPrice) {
    setState(() {
      _beginAmount = _targetAmount;
      _targetAmount = newPrice;
    });
  }
}
