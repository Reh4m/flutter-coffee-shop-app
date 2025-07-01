import 'package:coffe_shop_app/src/screens/product/widgets/bottom_bar_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_description_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_image_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_overview_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_rating_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_size_options_widget.dart';
import 'package:coffe_shop_app/src/widgets/divider_line_widget.dart';
import 'package:coffe_shop_app/src/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double bottomBarHeight = 96;

    return const Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    TopBarWidget(
                      title: 'Detail',
                      rightIcon: Icons.favorite_border_rounded,
                    ),
                    SizedBox(height: 20),
                    ProductImageWidget(),
                    SizedBox(height: 20),
                    ProductOverviewWidget(),
                    SizedBox(height: 10),
                    ProductRatingWidget(),
                    SizedBox(height: 20),
                    DividerLineWidget(),
                    SizedBox(height: 20),
                    ProductDescriptionWidget(),
                    SizedBox(height: 20),
                    ProductSizeOptionsWidget(),
                    SizedBox(height: bottomBarHeight + 20),
                  ],
                ),
              ),
            ),
            Positioned(bottom: 0, left: 0, right: 0, child: BottomBarWidget()),
          ],
        ),
      ),
    );
  }
}
