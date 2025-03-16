import 'package:coffe_shop_app/src/screens/delivery/widgets/bottom_sheet_widget.dart';
import 'package:coffe_shop_app/src/screens/delivery/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[_buildTopBar(), BottomSheetWidget()],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
        child: TopBarWidget(),
      ),
    );
  }
}
