import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _icon(iconName: Icon(Icons.arrow_back_ios_new)),
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
        _icon(iconName: Icon(Icons.favorite_border)),
      ],
    );
  }

  Widget _icon({required Icon iconName}) {
    return IconButton(
      onPressed: () {},
      icon: iconName,
      padding: EdgeInsets.all(10.0),
      color: Color(0xFF242424),
    );
  }
}
