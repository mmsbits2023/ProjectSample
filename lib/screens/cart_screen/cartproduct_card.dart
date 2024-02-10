
import 'package:flutter/material.dart';
import 'package:projectfour/models/models.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  
  const CartProductCard({Key? key,
  required this.product,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
    children: [
      Image.network(
        product.imageUrl,
        width:100 ,
        height: 80,
       ),
       SizedBox(width: 10,),
      Expanded(
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.name,
          style: Theme.of(context).textTheme.headline5,),
          
          Text('\$${product.price}',
          style: Theme.of(context).textTheme.headline6,),
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
                 /* Text(
                    '\$${Cart().subtotalString}',
                    style: Theme.of(context).textTheme.headline5,
                  ),*/
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
                 /* Text(
                    '\$${Cart().totalString}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                  ),*/
                ],
              ),   
               ),
                  ),
                 ], 
                ),
                  ],
              ),        ),
        ],
       ),
       );
       /*SizedBox(width: 10,),
       child:Row(
        children: [
          IconButton(
            onPressed: (){}, 
          icon:Icon(Icons.remove_circle)
          ),
          Text('1',style: Theme.of(context).textTheme.headline6,),
           IconButton(
            onPressed: (){}, 
          icon:Icon(Icons.add_circle)
          ),

        ],
       );*/
  
  
  
  }
}