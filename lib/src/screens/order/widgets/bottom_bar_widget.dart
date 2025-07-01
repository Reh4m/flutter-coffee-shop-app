import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:coffe_shop_app/src/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: LightTheme.cardBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: <Widget>[
          const Row(
            children: <Widget>[
              Icon(
                Icons.account_balance_wallet_outlined,
                color: LightTheme.primaryColor,
                size: 25,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cash/Wallet',
                    style: TextStyle(
                      color: Color(0xFF242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$ 5.00',
                    style: TextStyle(
                      color: LightTheme.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFF2A2A2A),
                size: 20,
              ),
            ],
          ),
          const SizedBox(height: 15),
          PrimaryButtonWidget(
            onPressed: () => Navigator.pushNamed(context, '/delivery'),
            text: 'Order',
            width: size.width,
          ),
        ],
      ),
    );
  }
}
