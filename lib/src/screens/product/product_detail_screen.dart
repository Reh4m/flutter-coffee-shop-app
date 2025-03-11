import 'package:coffe_shop_app/src/screens/product/widgets/bottom_bar_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_description_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_rating_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_size_options_widget.dart';
import 'package:coffe_shop_app/src/screens/product/widgets/product_title_widget.dart';
import 'package:coffe_shop_app/src/widgets/spacer_line_widget.dart';
import 'package:coffe_shop_app/src/widgets/top_bar_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final GlobalKey<BottomBarWidgetState> bottomBarKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const double bottomBarHeight = 104;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              // ignore: sized_box_for_whitespace
              child: Container(
                height: MediaQuery.of(context).size.height + bottomBarHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildTopBar(),
                    _buildProductImage(),
                    _buildProductTitle(),
                    _buildProductRating(),
                    SpacerLineWidget(),
                    _buildProductDescription(),
                    _buildProductSizeOptions(),
                  ],
                ),
              ),
            ),
            _buildBottomBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: TopBarWidget(
        title: 'Detail',
        rightIcon: Icons.favorite_border_rounded,
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/coffee.jpg', fit: BoxFit.cover, height: 250),
      ),
    );
  }

  Widget _buildProductTitle() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: ProductTitleWidget(),
    );
  }

  Widget _buildProductRating() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: ProductRatingWidget(),
    );
  }

  Widget _buildProductDescription() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: ProductDescriptionWidget(),
    );
  }

  void _updatePrice(double price) {
    bottomBarKey.currentState?.updatePrice(price);
  }

  Widget _buildProductSizeOptions() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: ProductSizeOptionsWidget(updatePrice: _updatePrice),
    );
  }

  Widget _buildBottomBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: BottomBarWidget(key: bottomBarKey),
    );
  }
}
