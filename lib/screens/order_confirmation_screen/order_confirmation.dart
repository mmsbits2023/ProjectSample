import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({super.key});

static const String routeName='/order_confirmation';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name:routeName),
      builder: (context)=>OrderConfirmation()
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}