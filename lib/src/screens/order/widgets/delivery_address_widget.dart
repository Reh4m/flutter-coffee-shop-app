import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 15),
          _buildName(),
          const SizedBox(height: 5),
          _buildAddress(),
          const SizedBox(height: 15),
          _buildChips(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Delivery Address',
      style: TextStyle(
        color: LightTheme.textColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildName() {
    return const Text(
      'John Doe',
      style: TextStyle(
        color: LightTheme.textColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildAddress() {
    return const Text(
      '1234, Coffee Street, New York, USA',
      style: TextStyle(
        color: LightTheme.textLightColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildChips() {
    return Wrap(
      spacing: 10,
      children: [
        _buildChip(
          icon: Icons.edit_location_alt_outlined,
          label: 'Edit Address',
        ),
        _buildChip(icon: Icons.notes_rounded, label: 'Add note'),
      ],
    );
  }

  Widget _buildChip({required IconData icon, required String label}) {
    return Chip(
      avatar: Icon(icon, color: LightTheme.darkGrey),
      label: Text(label),
      labelStyle: const TextStyle(
        color: LightTheme.darkGrey,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      deleteIcon: const Icon(Icons.edit, color: LightTheme.darkGrey),
    );
  }
}
