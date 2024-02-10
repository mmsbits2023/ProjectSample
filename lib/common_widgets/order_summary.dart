import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:projectfour/screens/cart_screen/cart_bloc.dart';
import 'package:projectfour/screens/cart_screen/cart_state.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<CartBloc,CartState>(
      builder: (context,state){
        if(state is CartLoaded){
          return Column(
            children: [
              Divider(thickness: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('SUBTOTAL',style: Theme.of(context).textTheme.headline5,),
                    Text('${state.cart.subtotalString}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color:Colors.white),)
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DELIVERY FEE ',
                style: Theme.of(context).textTheme.headline5,),
                 Text('\$${state.cart.deliveryfeeString}',
                style: Theme.of(context).textTheme.headline5,),
              ],
            ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children:<Widget> [
                  Container(
                    child: Column(
                      children: [
                        Text('TOTAL',
                        style: Theme.of(context).textTheme.headline5!
                        .copyWith(color: Colors.white),
                        ),
                        Text('\$${state.cart.totalString}',
                        style: Theme.of(context).textTheme.headline5!
                        .copyWith(color:Colors.white),)
                      ],
                    ),
                  )
                ],
              )
           
            ],

          );
        }
        else{
          return Text('Something went wrong');
        }
      },
      );
  }
}