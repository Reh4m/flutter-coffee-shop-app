import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ProductOrderCardWidget extends StatefulWidget {
  const ProductOrderCardWidget({super.key});

  @override
  State<ProductOrderCardWidget> createState() => _ProductOrderCardWidgetState();
}

class _ProductOrderCardWidgetState extends State<ProductOrderCardWidget> {
  int quantity = 1;

  void _incrementQuantity() {
    setState(() => quantity += 1);
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() => quantity -= 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Row(
        children: [
          _buildProductImage(),
          const SizedBox(width: 15),
          _buildProductDetails(),
          const Spacer(),
          _buildQuantityControl(),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('assets/coffee.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          'Medium, 2 sugar, 2 milk',
          style: TextStyle(
            color: LightTheme.textLightColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildQuantityControl() {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildQuantityButton(
            icon: Icons.remove,
            onPressed: quantity == 1 ? null : _decrementQuantity,
          ),
          Text(
            quantity.toString(),
            style: TextStyle(
              color: Color(0xFF2A2A2A),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildQuantityButton(icon: Icons.add, onPressed: _incrementQuantity),
        ],
      ),
    );
  }

  Widget _buildQuantityButton({
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return Ink(
      height: 30,
      width: 30,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(
          side: BorderSide(color: Color(0xFFF9F2ED), width: 2),
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.all(0),
        icon: Icon(icon),
        iconSize: 20,
        color: Color(0xFF2A2A2A),
        onPressed: onPressed,
      ),
    );
  }
}
