import 'package:coffe_shop_app/src/screens/delivery/index.dart';
import 'package:coffe_shop_app/src/screens/get_started_screen.dart';
import 'package:coffe_shop_app/src/screens/home/index.dart';
import 'package:coffe_shop_app/src/screens/order/index.dart';
import 'package:coffe_shop_app/src/screens/product/index.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/get-started':
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case '/order':
        return MaterialPageRoute(builder: (_) => const OrderScreen());
      case ('/product'):
        return MaterialPageRoute(builder: (_) => const ProductDetailScreen());
      case ('/delivery'):
        return MaterialPageRoute(builder: (_) => const DeliveryScreen());
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
