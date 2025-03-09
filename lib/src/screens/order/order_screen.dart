import 'package:coffe_shop_app/src/screens/order/widgets/delivery_address_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/delivery_method_switch_widget.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:coffe_shop_app/src/widgets/top_bar_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
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
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildTopBar(),
                    _buildDeliveryMethodSwitch(),
                    _buildDeliveryAddress(),
                    _spacerLineWidget(),
                    _productOrderDetails(),
                    _spacerLineWidget(),
                    _buildPromotions(),
                    _buildPaymentSummary(),
                  ],
                ),
              ),
            ),
            Positioned(left: 0, right: 0, bottom: 0, child: _buildBottomBar()),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: TopBarWidget(title: 'Order'),
    );
  }

  Widget _buildDeliveryMethodSwitch() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFEDEDED),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DeliveryMethodSwitchWidget(),
    );
  }

  Widget _buildDeliveryAddress() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: DeliveryAddressWidget(),
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

  Widget _productOrderDetails() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Row(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage('assets/coffee.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cappuccino',
                  style: TextStyle(
                    color: LightTheme.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Medium, 2 sugar, 2 milk',
                  style: TextStyle(
                    color: LightTheme.textLightColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ink(
                    height: 30,
                    width: 30,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(
                        side: BorderSide(color: Color(0xFFF9F2ED), width: 2),
                      ),
                    ),
                    child: IconButton(
                      isSelected: true,
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.remove),
                      iconSize: 20,
                      color: Color(0xFF2A2A2A),
                      onPressed: null,
                    ),
                  ),
                  const Text(
                    '1',
                    style: TextStyle(
                      color: Color(0xFF2A2A2A),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Ink(
                    height: 30,
                    width: 30,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(
                        side: BorderSide(color: Color(0xFFF9F2ED), width: 2),
                      ),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.add),
                      iconSize: 20,
                      color: Color(0xFF2A2A2A),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromotions() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(15),
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Color(0xFFEDEDED), width: 1.5),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.percent_rounded,
                  color: LightTheme.primaryColor,
                  size: 25,
                ),
                SizedBox(width: 15),
                Text(
                  '1 Discount is Applies',
                  style: TextStyle(
                    color: LightTheme.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFF2A2A2A),
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentSummary() {
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
            const Text(
              'Payment Summary',
              style: TextStyle(
                color: LightTheme.textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  'Subtotal',
                  style: TextStyle(
                    color: LightTheme.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                const Text(
                  '\$ 5.00',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Delivery Fee',
                  style: TextStyle(
                    color: LightTheme.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                const Text(
                  '\$ 2.00',
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 10),
                const Text(
                  '\$ 1.00',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: LightTheme.cardBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.account_balance_wallet_outlined,
                  color: LightTheme.primaryColor,
                  size: 25,
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cash/Wallet',
                      style: TextStyle(
                        color: Color(0xFF242424),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\$ 5.00',
                      style: TextStyle(
                        color: LightTheme.primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFF2A2A2A),
                  size: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {},
            minWidth: Size.infinite.width,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: LightTheme.primaryColor,
            child: Text(
              'Order',
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
}
