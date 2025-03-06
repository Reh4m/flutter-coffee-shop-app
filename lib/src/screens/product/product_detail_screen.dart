import 'package:coffe_shop_app/src/screens/product/widgets/bottom_bar_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_description_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_rating_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_size_options_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_title_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/top_bar_widget.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: LightTheme.backgroundColor,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _topBarWidget(),
                _productImageWidget(),
                _productTitleWidget(),
                _productRatingWidget(),
                _spacerLineWidget(),
                _productDescriptionWidget(),
                _productSizeOptions(),
              ],
            ),
          ),
          _bottomBarWidget(),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: TopBarWidget(),
    );
  }

  Widget _productImageWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/coffee.jpg',
          fit: BoxFit.cover,
          height: 300,
          width: double.infinity,
        ),
      ),
    );
  }

  Widget _productTitleWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ProductTitleWidget(),
    );
  }

  Widget _productRatingWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ProductRatingWidget(),
    );
  }

  Widget _spacerLineWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 60, right: 60),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: LightTheme.lightGrey,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Container(height: 1, color: LightTheme.lightGrey),
      ),
    );
  }

  Widget _productDescriptionWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ProductDescriptionWidget(),
    );
  }

  Widget _productSizeOptions() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ProductSizeOptionsWidget(),
    );
  }

  Widget _bottomBarWidget() {
    return Positioned(bottom: 0, left: 0, right: 0, child: BottomBarWidget());
  }
}
