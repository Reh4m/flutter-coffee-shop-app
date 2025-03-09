import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: LightTheme.cardBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.account_balance_wallet_outlined,
                  color: LightTheme.primaryColor,
                  size: 25,
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {},
            minWidth: Size.infinite.width,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: LightTheme.primaryColor,
            child: Text(
              'Order',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
