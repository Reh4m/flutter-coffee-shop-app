import 'package:coffe_shop_app/src/screens/delivery/widgets/delivery_status_widget.dart';
import 'package:coffe_shop_app/src/screens/delivery/widgets/driver_info_widget.dart';
import 'package:coffe_shop_app/src/screens/delivery/widgets/time_left_widget.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpandableBottomSheet(
      persistentContentHeight: 0,

      background: Container(),

      persistentHeader: _buildPersistentHeader(),

      expandableContent: _buildDeliveryDetails(),
    );
  }

  Widget _buildPersistentHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
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
      child: Container(
        margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TimeLeftWidget(),
            DeliveryStatusWidget(),
            DriverInfoWidget(),
          ],
        ),
      ),
    );
  }
}
