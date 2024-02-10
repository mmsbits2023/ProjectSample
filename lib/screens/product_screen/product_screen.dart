/*import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectfour/bloc/wishlist_bloc.dart';
import 'package:projectfour/bloc/wishlist_event.dart';
import 'package:projectfour/bloc/wishlist_state.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/hero_carousel.dart';
import 'package:projectfour/models/models.dart';

class ProductScreen extends StatelessWidget {
 // const ProductScreen({super.key});

static const String routeName='/product';

static Route route({required Product product}){
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (context)=> ProductScreen(product:product),
    );
}
final Product product;
const ProductScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child:CustomAppBar(title:product.name),
              ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.share),
                color: Colors.white,
                ),
                  BlocBuilder<WishListBloc, WishlistState>(builder: (context, state) {
                 return IconButton(
                 onPressed: () {
                 context.read<WishListBloc>().add(AddWishlistProduct(product));
                  final snackBar = SnackBar(content: Text('Added to your wishlist'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                 icon: Icon(Icons.favorite),
                 color: Colors.white,
                  );
                  }),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){}, 
                child: Text('Add To Cart',style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),)
                )
            ],
          ),
        ),
      ),

      body:ListView(
        children: [
          CarouselSlider(
        options: CarouselOptions(
          aspectRatio:1.5,
          viewportFraction: 0.9,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          enlargeCenterPage: true,
        ),
        items:[HeroCarouselCard(product: product,)]
      ),
       Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
       child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            alignment: Alignment.bottomCenter,
            color: Colors.black.withAlpha(50),
          ),
          Container(
            margin: const EdgeInsets.all(5.8),
            width: MediaQuery.of(context).size.width-10,
            height: 50,
            color: Colors.black,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text(
                product.name,
                style:Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
             
              Text('${product.price}',style:Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),)
             ], 
            ),
            ),
   
          )
        ],
       ),
       ),
      Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20.0),
        child:  ExpansionTile(
        initiallyExpanded: true,
        title: Text('Product Information',style: Theme.of(context).textTheme.headline3,),
        children: [
          ListTile(
            title: Text('dsfghjklldffdsarfgdfgjkjhqweqwetrtyiklsdfhghxcvxcvvbnmAESRDTHFYJAasddffghjkwqqwaedfhghjkl2utiysdsfghjklcxvbnm,23q4we5r6t7y8u9i2345678',
            style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ],
        ),
        ),
        
         Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20.0),
        child:  ExpansionTile(
        initiallyExpanded: true,
        title: Text('Delivery Information',style: Theme.of(context).textTheme.headline3,),
        children: [
          ListTile(
            title: Text('dsfghjklldffdsarfgdfgjkjhqweqwetrtyiklsdfhghxcvxcvvbnmAESRDTHFYJAasddffghjkwqqwaedfhghjkl2utiysdsfghjklcxvbnm,23q4we5r6t7y8u9i2345678',
            style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ],
        ),
        ),
        ],
      ),
          );
  }
}*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectfour/bloc/wishlist_bloc.dart';
import 'package:projectfour/bloc/wishlist_event.dart';
import 'package:projectfour/bloc/wishlist_state.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/hero_carousel.dart';
import 'package:projectfour/models/models.dart';

class ProductScreen extends StatelessWidget {
 // const ProductScreen({super.key});

static const String routeName='/product';

static Route route({required Product product}){
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (context)=> ProductScreen(product:product),
    );
}
final Product product;

const ProductScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child:CustomAppBar(title:product.name),
              ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.share),
                color: Colors.white,
                ),
                BlocBuilder<WishListBloc, WishlistState>(builder: (context, state) {
  bool isAdded = state is WishlistLoaded && state.props.contains(product);

  return IconButton(
    onPressed: isAdded ? null : () {
      context.read<WishListBloc>().add(AddWishlistProduct(product));
      final snackBar = SnackBar(content: Text('Added to your wishlist'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
    icon: Icon(isAdded ? Icons.favorite : Icons.favorite_border),
    color: Colors.white,
  );
}),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){}, 
                child: Text('Add To Cart',style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),)
                )
            ],
          ),
        ),
      ),

      body:ListView(
        children: [
          CarouselSlider(
        options: CarouselOptions(
          aspectRatio:1.5,
          viewportFraction: 0.9,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          enlargeCenterPage: true,
        ),
        items:[HeroCarouselCard(product: product,)]
      ),
       Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
       child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            alignment: Alignment.bottomCenter,
            color: Colors.black.withAlpha(50),
          ),
          Container(
            margin: const EdgeInsets.all(5.8),
            width: MediaQuery.of(context).size.width-10,
            height: 50,
            color: Colors.black,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text(
                product.name,
                style:Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
             
              Text('${product.price}',style:Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),)
             ], 
            ),
            ),
   
          )
        ],
       ),
       ),
      Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20.0),
        child:  ExpansionTile(
        initiallyExpanded: true,
        title: Text('Product Information',style: Theme.of(context).textTheme.headline3,),
        children: [
          ListTile(
            title: Text('dsfghjklldffdsarfgdfgjkjhqweqwetrtyiklsdfhghxcvxcvvbnmAESRDTHFYJAasddffghjkwqqwaedfhghjkl2utiysdsfghjklcxvbnm,23q4we5r6t7y8u9i2345678',
            style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ],
        ),
        ),
        
         Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20.0),
        child:  ExpansionTile(
        initiallyExpanded: true,
        title: Text('Delivery Information',style: Theme.of(context).textTheme.headline3,),
        children: [
          ListTile(
            title: Text('dsfghjklldffdsarfgdfgjkjhqweqwetrtyiklsdfhghxcvxcvvbnmAESRDTHFYJAasddffghjkwqqwaedfhghjkl2utiysdsfghjklcxvbnm,23q4we5r6t7y8u9i2345678',
            style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ],
        ),
        ),
        ],
      ),
          );
  }
}
