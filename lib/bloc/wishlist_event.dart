import 'package:equatable/equatable.dart';
import 'package:projectfour/models/models.dart';

abstract class WishlistEvent extends Equatable{
  const WishlistEvent();

  @override
  List<Object>get props =>[];
}
class StartWishlist extends WishlistEvent{}

class AddWishlistProduct extends WishlistEvent{
  final Product product;

 const AddWishlistProduct(this.product);

 @override
 List<Object> get props =>[product]; 
}


class RemovedWishlistProduct extends WishlistEvent{
  final Product product;

 const RemovedWishlistProduct(this.product);

 @override
 List<Object> get props =>[product]; 
}