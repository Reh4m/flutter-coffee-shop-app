import 'package:coffe_shop_app/src/data/data.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/banner_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/category_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/location_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/product_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/search_widget.dart';
import 'package:coffe_shop_app/src/widgets/bottom_navbar_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIndex = 0;

  void _onCategorySelected(int categoryId) {
    setState(() {
      selectedCategoryIndex = categoryId;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double bottomBarHeight = 118;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: _buildGradientContainer(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildLocation(),
                      _buildSearch(),
                      _buildBanner(),
                      _buildCategories(),
                      _buildProducts(),
                      // Extra space to avoid the last element to be hidden by the bottom bar
                      SizedBox(height: bottomBarHeight),
                    ],
                  ),
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

  Widget _buildGradientContainer() {
    const double locationHeight = 91;
    const double searchHeight = 84;
    const double bannerHeight = 173;
    const double spacingBetweenElements = 20;
    const double gradientHeight =
        locationHeight +
        searchHeight +
        spacingBetweenElements +
        (bannerHeight / 2);

    return Container(
      // Covers up to half of banner height
      height: gradientHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff232526), Color(0xff414345)],
          stops: [0, 1],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: MediaQuery.of(context).size.width,
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
        itemCount: Categories.categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCardWidget(
            category: Categories.categoriesList[index],
            onCategorySelected: _onCategorySelected,
            isSelected:
                selectedCategoryIndex == Categories.categoriesList[index].id,
          );
        },
      ),
    );
  }

  Widget _buildProducts() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [
          for (final product in Coffees.coffeesList)
            ProductCardWidget(product: product),
        ],
      ),
    );
  }
}
