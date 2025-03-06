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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            onPressed: () {},
            minWidth: 0,
            padding: EdgeInsets.zero,
            elevation: 0,
            shape: CircleBorder(),
            textColor: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          Card(
            color: Colors.transparent,
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Text(
              'Detail',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 0,
            padding: EdgeInsets.zero,
            elevation: 0,
            shape: CircleBorder(),
            textColor: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.favorite_border),
            ),
          ),
        ],
      ),
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
      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.zero,
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Caffe Mocha',
                    style: const TextStyle(
                      color: LightTheme.textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Ice/Hot',
                    style: const TextStyle(
                      color: LightTheme.textLightColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              spacing: 15,
              children: [
                Card(
                  color: Color.fromRGBO(237, 237, 237, 0.35),
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Icon(
                        Icons.delivery_dining,
                        color: LightTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromRGBO(237, 237, 237, 0.35),
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Icon(
                        Icons.coffee_maker_outlined,
                        color: LightTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromRGBO(237, 237, 237, 0.35),
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Icon(
                        Icons.water_drop_rounded,
                        color: LightTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _productRatingWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star_rounded, color: Color(0xFFFBBE21), size: 30),
            const SizedBox(width: 5),
            Text(
              '4.5',
              style: const TextStyle(
                color: LightTheme.textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              ' (125 Reviews)',
              style: const TextStyle(
                color: LightTheme.textLightColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
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
      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: const TextStyle(
                color: LightTheme.textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Caffe Mocha is a chocolate-flavored variant of a caffè latte. Other commonly used spellings are mochaccino and also mochachino. It is usually served with whipped cream, and topped with a dusting of either cocoa, cinnamon, or both.',
              style: const TextStyle(
                color: LightTheme.textLightColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productSizeOptions() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: Card(
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

  Widget _bottomBarWidget() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
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
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$ 4.50',
                    style: const TextStyle(
                      color: LightTheme.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 0,
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 30,
              ),
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
      ),
    );
  }
}
