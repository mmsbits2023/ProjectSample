import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.black,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context,'/');
            }, 
            icon:Icon(Icons.home,color: Colors.white,)
            ),
            IconButton(
            onPressed: (){
              Navigator.pushNamed(context,'/cart');
            }, 
            icon:Icon(Icons.shopping_cart,color: Colors.white,)
            ),
            IconButton(
            onPressed: (){
              Navigator.pushNamed(context,'/catlog');
            }, 
            icon:Icon(Icons.person,color: Colors.white,)
            ),

            ],
          ),
        ),
      );
  }


  List<Widget>?_selectNavBar(context,screen){
    switch(screen){
      case'/':
     // return _buildNavBar(context);
      
      case '/catlog':
     // return _buildNavBar(context);

      case '/wishlist':
      //return _buildNavBar(context);

      case '/product':
     // return _buildAddCartNavBar(context,product);

      case '/cart':
      return _buildGoTOCheckoutNavBar(context);

      case '/checkout':
      return _buildOrderNowNavBar(context);
        default:
     // _buildNavBar(context);

    }
  }

List<Widget >_buildGoTOCheckoutNavBar(context){
  return [
    ElevatedButton(
      onPressed: (){
        Navigator.pushNamed(context,'/chechout');
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(),

      ),
       child:Text( 'Go To  Checkout..',  
           style:Theme.of(context).textTheme.headline3,))
  ];
}

List<Widget >_buildOrderNowNavBar(context){
  return [
    ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(),

      ),
       child:Text( 
        'Order Now--',  
           style:Theme.of(context).textTheme.headline3,))
  ];
}
  
}