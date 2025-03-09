import 'package:coffe_shop_app/src/screens/get_started_screen.dart';
import 'package:coffe_shop_app/src/screens/home/home_screen.dart';
import 'package:coffe_shop_app/src/screens/order/order_screen.dart';
import 'package:coffe_shop_app/src/screens/product/product_detail_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/get-started':
        return MaterialPageRoute(builder: (_) => GetStartedScreen());
      case '/order-details':
        return MaterialPageRoute(builder: (_) => OrderScreen());
      case ('/product-details'):
        return MaterialPageRoute(builder: (_) => ProductDetailScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
