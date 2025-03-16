import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DriverInfoWidget extends StatelessWidget {
  const DriverInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildDriverPicture(),
          const SizedBox(width: 20),
          _buildDriverDetails(),
          const Spacer(),
          _buildCallButton(),
        ],
      ),
    );
  }

  Widget _buildDriverPicture() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        'assets/picture-1.jpg',
        fit: BoxFit.cover,
        height: 56,
        width: 56,
      ),
    );
  }

  Widget _buildDriverDetails() {
    return Column(
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
    );
  }

  Widget _buildCallButton() {
    return Container(
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
    );
  }
}
