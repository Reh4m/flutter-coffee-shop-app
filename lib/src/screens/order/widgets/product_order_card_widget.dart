import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductOrderCardWidget extends StatelessWidget {
  const ProductOrderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildProductImage(),
        const SizedBox(width: 15),
        _buildProductDetails(),
        const Spacer(),
        _buildQuantityControl(),
      ],
    );
  }

  Widget _buildProductImage() {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/coffee.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProductDetails() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Cappuccino',
          style: TextStyle(
            color: LightTheme.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Deep Foam',
          style: TextStyle(color: LightTheme.textLightColor, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildQuantityControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _quantityButton(icon: Icons.remove, onPressed: null),
        const Text(
          '1',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        _quantityButton(icon: Icons.add, onPressed: () {}),
      ],
    );
  }

  Widget _quantityButton({
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return IconButton.filled(
      onPressed: onPressed,
      icon: Icon(icon),
      iconSize: 20,
      color: const Color(0xFF2A2A2A),
      style: IconButton.styleFrom(
        backgroundColor: Colors.white,
        disabledBackgroundColor: Colors.white,
        shape: const CircleBorder(
          side: BorderSide(color: Color(0xFFF9F2ED), width: 2),
        ),
        minimumSize: const Size(30, 30),
        padding: const EdgeInsets.all(5),
      ),
    );
  }
}
