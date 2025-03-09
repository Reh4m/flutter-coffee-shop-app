import 'package:coffe_shop_app/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffe_shop_app/src/config/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.soraTextTheme(Theme.of(context).textTheme),
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: '/get-started',
    );
  }
}
