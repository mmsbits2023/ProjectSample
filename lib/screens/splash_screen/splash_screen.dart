import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:projectfour/models/models.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName='/splash';

  static Route route (){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context)=>SplashScreen(),);
  }
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:2),()=>Navigator.pushNamed(context, '/'));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Container(
              color: Colors.amber,
              width:125,
              height: 125,
          ),
          ),
          SizedBox(height: 30,),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20
            ),
            child: Text('Shopping Application',
            style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
            ),)
        ],
      ),
    );
  }
}
