import 'package:coffe_shop_app/src/data/data.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/banner_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/category_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/location_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/product_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/search_widget.dart';
import 'package:coffe_shop_app/src/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const double bottomBarHeight = 94;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: _buildGradientContainer(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 60),
                      const LocationCardWidget(),
                      const SizedBox(height: 20),
                      const SearchWidget(),
                      const SizedBox(height: 20),
                      const BannerWidget(),
                      const SizedBox(height: 20),
                      _buildCategories(),
                      const SizedBox(height: 20),
                      _buildProducts(),
                      const SizedBox(height: 20),
                      // Extra space to avoid the last element to be hidden by the bottom bar
                      const SizedBox(height: bottomBarHeight),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomBarWidget(),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientContainer() {
    const double locationHeight = 47;
    const double searchHeight = 64;
    const double bannerHeight = 161;
    const double spacingBetweenElements = 80;
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

  Widget _buildCategories() {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        itemCount: Categories.categoriesList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder:
            (context, index) => CategoryCardWidget(
              category: Categories.categoriesList[index],
              isSelected: index == 0,
            ),
      ),
    );
  }

  Widget _buildProducts() {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      children: [
        for (final product in Coffees.coffeesList)
          ProductCardWidget(product: product),
      ],
    );
  }
}
