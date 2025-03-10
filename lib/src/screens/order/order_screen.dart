import 'package:coffe_shop_app/src/screens/order/widgets/bottom_bar_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/delivery_address_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/delivery_method_switch_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/payment_summary_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/product_order_card_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/promotions_card_widget.dart';
import 'package:coffe_shop_app/src/widgets/spacer_line_widget.dart';
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
                    SpacerLineWidget(),
                    _productOrderDetails(),
                    SpacerLineWidget(),
                    _buildPromotions(),
                    _buildPaymentSummary(),
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
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: TopBarWidget(title: 'Order'),
    );
  }

  Widget _buildDeliveryMethodSwitch() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
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
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: DeliveryAddressWidget(),
    );
  }

  Widget _productOrderDetails() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: ProductOrderCardWidget(),
    );
  }

  Widget _buildPromotions() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: PromotionsCardWidget(),
    );
  }

  Widget _buildPaymentSummary() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: PaymentSummaryWidget(),
    );
  }

  Widget _buildBottomBar() {
    return Positioned(bottom: 0, left: 0, right: 0, child: BottomBarWidget());
  }
}
