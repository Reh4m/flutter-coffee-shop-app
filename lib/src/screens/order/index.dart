import 'package:coffe_shop_app/src/screens/order/widgets/bottom_bar_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/delivery_address_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/delivery_method_switch_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/payment_summary_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/product_order_card_widget.dart';
import 'package:coffe_shop_app/src/screens/order/widgets/promotions_card_widget.dart';
import 'package:coffe_shop_app/src/widgets/divider_line_widget.dart';
import 'package:coffe_shop_app/src/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double bottomBarHeight = 155;

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    TopBarWidget(title: 'Order'),
                    SizedBox(height: 20),
                    DeliveryMethodSwitchWidget(),
                    SizedBox(height: 20),
                    DeliveryAddressWidget(),
                    SizedBox(height: 20),
                    DividerLineWidget(),
                    SizedBox(height: 20),
                    ProductOrderCardWidget(),
                    SizedBox(height: 20),
                    DividerLineWidget(),
                    SizedBox(height: 20),
                    PromotionsCardWidget(),
                    SizedBox(height: 20),
                    PaymentSummaryWidget(),
                    // Extra space to avoid the last element to be hidden by the bottom bar
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
