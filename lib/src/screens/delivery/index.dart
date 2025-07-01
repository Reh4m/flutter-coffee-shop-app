import 'package:coffe_shop_app/src/screens/delivery/widgets/delivery_status_widget.dart';
import 'package:coffe_shop_app/src/screens/delivery/widgets/driver_info_widget.dart';
import 'package:coffe_shop_app/src/screens/delivery/widgets/time_left_widget.dart';
import 'package:coffe_shop_app/src/screens/delivery/widgets/top_bar_widget.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ExpandableBottomSheet(
              persistentContentHeight: size.height * 0.15,
              background: _buildBackground(),
              persistentHeader: _buildPersistentHeader(),
              expandableContent: _buildDeliveryDetails(),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: const TopBarWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/maps.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildPersistentHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Center(
        child: Container(
          width: 35,
          height: 5,
          decoration: BoxDecoration(
            color: LightTheme.lightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _buildDeliveryDetails() {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TimeLeftWidget(),
            const SizedBox(height: 20),
            DeliveryStatusWidget(),
            const SizedBox(height: 20),
            DriverInfoWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
