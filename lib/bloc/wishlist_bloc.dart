


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectfour/bloc/wishlist_event.dart';
import 'package:projectfour/bloc/wishlist_state.dart';
import 'package:projectfour/models/wishlist_model.dart';

class WishListBloc extends Bloc<WishlistEvent,WishlistState>{
  WishListBloc():super(WishlistLoading());
  

  @override
  Stream<WishlistState>mapEventToState(
    WishlistEvent event,
  )async*{
  if(event is StartWishlist){
    yield* _mapStartWishlistToState();
  }else if(event is AddWishlistProduct){
    yield* _mapAddWishlistProductToState(event,state);
  }else if(event is RemovedWishlistProduct){
    yield* _mapRemovedWishlistProductToState(event,state);
  }
  }

  Stream<WishlistState>_mapStartWishlistToState()async*{
    yield WishlistLoading();
    try{
      await Future<void>.delayed(Duration(seconds: 1));
      yield const WishlistLoaded();
    }catch(_){}
  }

  Stream<WishlistState>_mapAddWishlistProductToState(
    AddWishlistProduct event,
    WishlistState state,
  )async*{
      if(state is WishlistLoaded){
        try{
          yield WishlistLoaded(
            wishlist: Wishlist(
              products: List.from(state.wishlist.products)
              ..add(event.product)));
        }catch(_){}
      }
      }

      
  Stream<WishlistState>_mapRemovedWishlistProductToState(
    RemovedWishlistProduct event,
    WishlistState state,
  )async*{
      if(state is WishlistLoaded){
        try{
          yield WishlistLoaded(
            wishlist: Wishlist(
              products: List.from(state.wishlist.products)
              ..remove(event.product)));
        }catch(_){}
      }
      }

  }

