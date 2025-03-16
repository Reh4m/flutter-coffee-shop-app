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

      expandableContent: Container(
        color: Colors.white,
        child: _buildDeliveryDetails(),
      ),
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
      margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          TimeLeftWidget(),
          _buildDeliveryStatus(),
          _buildDriverInfo(),
        ],
      ),
    );
  }

  Widget _buildDeliveryStatus() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  margin: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 4 - 30,
                  height: 5,
                  decoration: BoxDecoration(
                    color: i == 3 ? LightTheme.lightGrey : Color(0xFF36C07E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: LightTheme.lightGrey, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: LightTheme.lightGrey, width: 1),
                  ),
                  child: const Icon(
                    Icons.delivery_dining,
                    color: LightTheme.primaryColor,
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivered your order',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'We will deliver your goods to you in the shortes possible time.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: LightTheme.textLightColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDriverInfo() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/coffee.jpg',
              fit: BoxFit.cover,
              height: 56,
              width: 56,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brooklyn Simmons',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Text(
                'Personal Courier',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: LightTheme.textLightColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: LightTheme.lightGrey, width: 1),
            ),
            child: const Icon(
              Icons.phone_in_talk_outlined,
              color: LightTheme.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
