import 'package:flutter/material.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/custom_navbar.dart';
import 'package:projectfour/models/cart_model.dart';
import 'package:projectfour/models/models.dart';
import 'package:projectfour/screens/cart_screen/cartproduct_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

static const String routeName='/cart';

static Route route(){
  return MaterialPageRoute(
    settings: RouteSettings(name:routeName),
    builder: (context)=> CartScreen(),
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child:CustomAppBar(title:'Cart'),
              ),
      bottomNavigationBar: CustomNavBar(),

      body:SingleChildScrollView(
    child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Cart().freeDeliveryString,
          style: Theme.of(context).textTheme.headline5,
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context,"/");
            }, 
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(),
             elevation: 0, 
               
            ),
            child: Text('Add More Items',
            style: Theme.of(context).textTheme.headline5,),
          ),
            ],
          ),
          SizedBox(height: 10,),
          /*SizedBox(height: 400,
          child: ListView.builder(
            itemCount: Cart().products.length,
            itemBuilder: (context,index){
              return CartProductCard(product: Cart().products[index]);
            }),),*/
          CartProductCard(product: Product.products[0]),
           CartProductCard(product: Product.products[2]),
               CartProductCard(product: Product.products[5]),
                CartProductCard(product: Product.products[2]),
               CartProductCard(product: Product.products[5]),
               
               
                SizedBox(height: 70,),
                Column(
                  children: [
              Divider(thickness: 2,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SUBTOTAL',
                  style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    '\$${Cart().subtotalString}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ), 
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('DELIVERY FEE',
                  style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    '\$2.98',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),   
                  ],
                ),
                ),
                SizedBox(height: 20,),
               
                    Stack(
                 children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(5.0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                   child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                     child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('TOTAL ',
                  style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                  ),
                  Text(
                    '\$${Cart().totalString}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                  ),
                ],
              ),   
               ),
                  ),
                 ], 
                ),
                  ],
                ),
            ],
      ),
     
      
    ),
      ),
    );
  }
}
