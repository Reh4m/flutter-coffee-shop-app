import 'package:coffe_shop_app/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffe_shop_app/src/config/routes.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop Template',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: '/get-started',
    );
  }
}
