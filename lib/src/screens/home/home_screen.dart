import 'package:coffe_shop_app/src/screens/home/widgets/banner_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/category_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/product_card_widget.dart';
import 'package:coffe_shop_app/src/screens/home/widgets/search_widget.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
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
    return Container(
      color: LightTheme.backgroundColor,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _searchWidget(),
            _bannerWidget(),
            _categoriesWidget(),
            _productsWidget(),
          ],
        ),
      ),
    );
  }

  Widget _searchWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: SearchWidget(),
    );
  }

  Widget _bannerWidget() {
    return BannerWidget();
  }

  Widget _categoriesWidget() {
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

  Widget _productsWidget() {
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
