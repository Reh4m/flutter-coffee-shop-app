import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _icon(icon: Icons.arrow_back_ios_new),
        Card(
          color: Colors.transparent,
          margin: EdgeInsets.zero,
          elevation: 0,
          child: Text(
            'Detail',
            style: const TextStyle(
              color: Color(0xFF242424),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        _icon(icon: Icons.favorite_border),
      ],
    );
  }

  Widget _icon({required IconData icon}) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      padding: EdgeInsets.all(10.0),
      color: Color(0xFF242424),
    );
  }
}
