import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:coffe_shop_app/src/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: size.height * 0.3,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/get_started_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.7,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            bottom: 0,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 100),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Fall in Love with Coffe in Blissful Delight!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Welcome to our cozy coffe corner, where every cup is a delightful for you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: LightTheme.textLightColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    PrimaryButtonWidget(
                      text: 'Get Started',
                      onPressed: () => Navigator.pushNamed(context, '/'),
                      width: size.width,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
