import 'package:coffe_shop_app/src/screens/home/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Flexible(
            child: GridView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                mainAxisExtent: 322,
              ),
              itemBuilder: (context, index) {
                return ProductCardWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
