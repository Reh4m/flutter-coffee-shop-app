import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Payment Summary',
          style: TextStyle(
            color: LightTheme.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        _buildSummaryRow(),
        const SizedBox(height: 10),
        _buildDeliveryFeeRow(),
      ],
    );
  }

  Widget _buildSummaryRow() {
    return const Row(
      children: <Widget>[
        Text(
          'Subtotal',
          style: const TextStyle(color: LightTheme.textColor, fontSize: 16),
        ),
        const Spacer(),
        Text(
          '\$ 5.00',
          style: const TextStyle(
            color: Color(0xFF242424),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildDeliveryFeeRow() {
    return const Row(
      children: <Widget>[
        const Text(
          'Delivery Fee',
          style: TextStyle(color: LightTheme.textColor, fontSize: 16),
        ),
        const Spacer(),
        const Text(
          '\$ 2.00',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          '\$ 1.00',
          style: TextStyle(
            color: Color(0xFF242424),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
