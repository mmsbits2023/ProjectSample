
import 'package:flutter/material.dart';
import 'package:projectfour/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor; 
  final double leftPosition;
  final bool isWishList;
  
  const ProductCard({ 
    Key?key,
  required this.product,
  this.widthFactor=2.5,
  this.leftPosition=5,
  this.isWishList=false,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,'/product',arguments: product);
      },
      child:  Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/widthFactor,
              height: 150,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 60,
              child:Container(
                width: MediaQuery.of(context).size.width/2.5-5-leftPosition,
                height: 80,
                decoration:BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ) 
            
              ),
                
                ),
                 Positioned(
              top: 60,
              left: leftPosition,
              child:Container(
                width: MediaQuery.of(context).size.width/2.5-10-leftPosition,
                height: 70,
                decoration:BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ) 
                ),
                ),
                 Positioned(
              top: 65,
              left: leftPosition + 5,
              child:Container(
                width:MediaQuery.of(context).size.width/2.5-20 -leftPosition,
                height: 70,
                decoration:BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ) ,
                child:Padding(
                  padding:const EdgeInsets.all(8.0), 
               child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(
                        product.name,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                        ),
                       ),
                        Text(
                       '\$${ product.price}',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                        ),
                       ),
                      ],
                    ), 
                      ),
                   Expanded(
                    child:  IconButton(
                      onPressed: (){}, 
                    icon: Icon(Icons.add_circle,),
                    ),
                    ),
                    isWishList ?
                     Expanded(
                    child:  IconButton(
                      onPressed: (){}, 
                    icon: Icon(Icons.delete,color: Colors.white,),
                    ),
                    ):SizedBox(),
                  ],
                ),
                ),
                ),
                 ),
          ],     
        ),
    );

  }
}