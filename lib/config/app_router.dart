import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectfour/models/models.dart';
import 'package:projectfour/screens/cart_screen/cart_screen.dart';
import 'package:projectfour/screens/checkout_screen/checkout_screen.dart';
import 'package:projectfour/screens/home_screen/home_screen.dart';
import 'package:projectfour/screens/order_confirmation_screen/order_confirmation.dart';
import 'package:projectfour/screens/screens.dart';
import 'package:projectfour/screens/splash_screen/splash_screen.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print('This is route : ${settings.name} ');

    switch(settings.name){
     case '/':
      return HomeScreen.route();
      case HomeScreen.routeName:
      return HomeScreen.route();

      case SplashScreen.routeName:
      return SplashScreen.route();


      case CartScreen.routeName:
      return CartScreen.route();

       case ProductScreen.routeName:
      return ProductScreen.route(product: settings.arguments as Product);

       case WishListScreen.routeName:
      return WishListScreen.route();
      
       case CatlogScreen.routeName:
      return CatlogScreen.route(category: settings.arguments as Category);
      
      case CheckoutScreen.routeName:
      return CheckoutScreen.route();

      case OrderConfirmation.routeName:
      return OrderConfirmation.route();
      

      default:
      return _errorRoute();
    }
  }

  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (context)=>Scaffold(
        appBar: AppBar(title: Text('Error'),),
      )
      );
  }
}