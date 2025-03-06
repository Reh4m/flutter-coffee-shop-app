import 'package:coffe_shop_app/src/screens/home/widgets/banner_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/category_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/location_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/product_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/search_widget.dart';
import 'package:coffe_shop_app/src/widgets/bottom_navbar_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double locationHeight = 91;
    final double searchHeight = 84;
    final double bannerHeight = 240;
    final double spacingBetweenElements = 20;
    final double gradientHeight =
        locationHeight +
        searchHeight +
        spacingBetweenElements +
        (bannerHeight / 2);

    const double bottomNavbarHeight = 118;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildLocation(),
                  _buildSearch(),
                  _buildBanner(),
                  _buildCategories(),
                  _buildProducts(),
                  // Extra space to avoid the last element to be hidden by the bottom navbar
                  SizedBox(height: bottomNavbarHeight),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavbarWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocation() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: LocationCardWidget(),
    );
  }

  Widget _buildSearch() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: SearchWidget(),
    );
  }

  Widget _buildBanner() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('assets/banner.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BannerWidget(),
    );
  }

  Widget _buildCategories() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CategoryCardWidget();
        },
      ),
    );
  }

  Widget _buildProducts() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          mainAxisExtent: 314,
        ),
        itemBuilder: (context, index) {
          return ProductCardWidget();
        },
      ),
    );
  }
}
