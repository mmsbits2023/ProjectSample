import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/custom_navbar.dart';
import 'package:projectfour/common_widgets/hero_carousel.dart';

import 'package:projectfour/common_widgets/product_carousel.dart';
import 'package:projectfour/models/models.dart';
import 'package:projectfour/common_widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

static const String routeName='/';

static Route route(){
  return MaterialPageRoute(
    builder: (_)=> HomeScreen(),
    );
}
  @override
  Widget build(BuildContext context) {

  return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child:CustomAppBar(title:'E-commerce Application'),
              ),
      bottomNavigationBar: CustomNavBar(),
  
      body: Column(
        children:[
      Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          //enableInfiniteScroll: false,
         // initialPage: 2,
         enlargeStrategy: CenterPageEnlargeStrategy.height,
          autoPlay: true,
        ),
        items:Category.categories
        .map((category)=>HeroCarouselCard(category:category)).toList(),
      ),
      ),
      //next part
       SectionTitle(title: 'RECOMMENDED'),
        
        //Product Card
        //ProductCard(product:Product.products[0],),
       
       //Product carousel
       ProductCarousel(
        products: Product.products
       .where((product) => product.isRecommended)
       .toList(),),
       
       SectionTitle(title: 'MOST POPULAR'),
        ProductCarousel(
        products: Product.products
       .where((product) => product.isPopular)
       .toList(),),
       
        

     ],
    ),
    );
  }

}