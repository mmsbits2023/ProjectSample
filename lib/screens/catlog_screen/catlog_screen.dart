import 'package:flutter/material.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/custom_navbar.dart';
import 'package:projectfour/common_widgets/product_card.dart';
import 'package:projectfour/models/models.dart';

class CatlogScreen extends StatelessWidget {
  static const String routeName='/catlog';

static Route route({required Category category}){

  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (context)=>CatlogScreen(category: category)
      );
  }

final Category category;

const CatlogScreen({required this.category});
/*const CatlogScreen({
  Key ?key,
  required this.category
  }):super(key: key);*/

  @override
  Widget build(BuildContext context) {

    final List<Product>categoryProducts =Product.products
    .where((product)=>product.category == category.name)
    .toList();

    return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child:CustomAppBar(title:category.name),
              ),
      bottomNavigationBar: CustomNavBar(),
  body:
  Row(
    children: [
      ProductCard(product:Product.products[0],),
      SizedBox(width: 20,),
      ProductCard(product: Product.products[0],),    
    ],
  ),
   
  
 /* GridView.builder(
    padding :const EdgeInsets.symmetric(
      horizontal:8.0,
      vertical:16.0,
      ),
   
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,childAspectRatio: 1.15),
      itemCount: categoryProducts.length,
   itemBuilder:(BuildContext context,int index) {
    return Center(
    child:ProductCard(
      product: categoryProducts[index],
      //product:categoryProducts[index], 
      widthFactor: 2.2,
      ),);
   })*/
    );
  }
}
