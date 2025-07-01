import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Delivery Address',
          style: TextStyle(
            color: LightTheme.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'John Doe',
          style: TextStyle(
            color: LightTheme.textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          '1234, Coffee Street, New York, USA',
          style: TextStyle(color: LightTheme.textLightColor, fontSize: 14),
        ),
        const SizedBox(height: 15),
        Wrap(
          spacing: 10,
          children: [
            _customChip(
              icon: Icons.edit_location_alt_outlined,
              label: 'Edit Address',
            ),
            _customChip(icon: Icons.notes_rounded, label: 'Add note'),
          ],
        ),
      ],
    );
  }

  Widget _customChip({required IconData icon, required String label}) {
    return Chip(
      avatar: Icon(icon, color: LightTheme.darkGrey),
      label: Text(label),
      labelStyle: const TextStyle(color: LightTheme.darkGrey, fontSize: 14),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      deleteIcon: const Icon(Icons.edit, color: LightTheme.darkGrey),
    );
  }
}
