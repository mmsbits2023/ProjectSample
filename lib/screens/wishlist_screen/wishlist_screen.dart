import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectfour/bloc/wishlist_bloc.dart';
import 'package:projectfour/bloc/wishlist_state.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/custom_navbar.dart';
import 'package:projectfour/common_widgets/product_card.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

static const String routeName='/favourite';

static Route route(){
  return MaterialPageRoute(
    builder: (_)=> WishListScreen(),
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child: const CustomAppBar(title:'WishList'),
              ),
      bottomNavigationBar: const CustomNavBar(),
    
    body:BlocBuilder<WishListBloc,WishlistState>(
    builder:(context,state){
      if(state is WishlistLoaded){
        return Center(
          child: CircularProgressIndicator(),
        );
      }
       if(state is WishlistLoaded){
          return  GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 16.0,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
      (crossAxisCount: 1,childAspectRatio: 1.8),
      itemCount: state.wishlist.products.length,
       itemBuilder:(BuildContext context,int index) {
        return Center(
          child: ProductCard(
            product: state.wishlist.products[index],
            widthFactor: 1.5,
            leftPosition: 30,
            isWishList:true,
          ),
        );
       },
        );
       }else{return Text('Something went wrong');
    }
      
    }
    
    ),
    );
  }
}
