import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  final String title;
  final IconData? rightIcon;

  const TopBarWidget({super.key, required this.title, this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildIconButton(Icons.arrow_back_ios),
        _buildTitle(),
        _buildRightIcon(),
      ],
    );
  }

  Widget _buildIconButton(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      padding: const EdgeInsets.all(10.0),
      color: const Color(0xFF242424),
    );
  }

  Widget _buildTitle() {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF242424),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildRightIcon() {
    return rightIcon != null
        ? _buildIconButton(rightIcon!)
        : SizedBox(width: 44);
  }
}
