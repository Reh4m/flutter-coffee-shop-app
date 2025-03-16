import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DeliveryStatusWidget extends StatefulWidget {
  const DeliveryStatusWidget({super.key});

  @override
  State<DeliveryStatusWidget> createState() => _DeliveryStatusWidgetState();
}

class _DeliveryStatusWidgetState extends State<DeliveryStatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          _buildProgressBar(),
          const SizedBox(height: 10),
          _buildDeliveryInfoCard(),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Row(
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
    );
  }

  Widget _buildDeliveryInfoCard() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: LightTheme.lightGrey, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_deliveryIcon(), const SizedBox(width: 20), _deliveryText()],
      ),
    );
  }

  Widget _deliveryIcon() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: LightTheme.lightGrey, width: 1),
      ),
      child: const Icon(Icons.delivery_dining, color: LightTheme.primaryColor),
    );
  }

  Widget _deliveryText() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivered your order',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
    );
  }
}
