import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DeliveryStatusWidget extends StatelessWidget {
  const DeliveryStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        _buildProgressBar(size),
        const SizedBox(height: 20),
        _buildDeliveryStatusCard(),
      ],
    );
  }

  Widget _buildProgressBar(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 4; i++)
          i < 3
              ? Container(
                width: size.width / 4 - 30,
                height: 5,
                decoration: BoxDecoration(
                  color: const Color(0xFF36C07E),
                  borderRadius: BorderRadius.circular(10),
                ),
              )
              : Container(
                width: size.width / 4 - 30,
                height: 5,
                child: LinearProgressIndicator(
                  color: const Color(0xFF36C07E),
                  backgroundColor: LightTheme.lightGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
      ],
    );
  }

  Widget _buildDeliveryStatusCard() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: LightTheme.lightGrey, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _deliveryStatusIcon(),
          const SizedBox(width: 20),
          _deliveryStatusText(),
        ],
      ),
    );
  }

  Widget _deliveryStatusIcon() {
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

  Widget _deliveryStatusText() {
    return const Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivered your order',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 5),
          Text(
            'We will deliver your goods to you in the shortes possible time.',
            style: TextStyle(fontSize: 14, color: LightTheme.textLightColor),
          ),
        ],
      ),
    );
  }
}
