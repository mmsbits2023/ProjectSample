import 'package:equatable/equatable.dart';
import 'package:projectfour/models/models.dart';

class Cart extends Equatable{
  final List<Product>products;
 const Cart({this.products=const <Product>[]});

double get subtotal =>products.fold(0,(total, current)=>total+current.price);

double deliveryFee(subtotal){
  if(subtotal>= 30.0){
    return 0.0;
  }else
  return 10.8;
}

double total(subtotal,deliveryfee){
  return subtotal + deliveryfee(subtotal);
}

String freeDelivery(subtotal){
  if(subtotal >= 30.0){
    return 'You have free Delivery';
  }else{
    double missing =30.0-subtotal;
    return'Add \$${missing.toStringAsFixed(2)} for FREE  Delivery';
  }
}




String get subtotalString =>subtotal.toStringAsFixed(2);

String get totalString =>total(subtotal,deliveryFee).toStringAsFixed(2);

String get deliveryfeeString =>deliveryFee(subtotal).toStringAsFixed(2);

String get freeDeliveryString => freeDelivery(subtotal);


 /* List<Product>products=[
   Product(
          name: 'Soft Drink',
          category: 'soft drinks...',
       imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD-ApJYnjdULA45Zq384yj6nktnvPRNG-miw&usqp=CAU',
       price: 2.99,
       isPopular: true,
       isRecommended: false,
      ),
       Product(
          name: 'Soft Drink',
          category: 'soft drinks...',
       imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD-ApJYnjdULA45Zq384yj6nktnvPRNG-miw&usqp=CAU',
       price: 2.99,
       isPopular: false,
       isRecommended: true,
      ),
       Product(
          name: 'Soft Drink',
          category: 'soft drinks...',
       imageUrl:'https://t3.ftcdn.net/jpg/03/69/56/02/360_F_369560255_ze7zKUVKic1yQKzmXOSym2shcEyGqKPg.jpg',
       price: 2.99,
       isPopular: false,
       isRecommended: true,
      ),
       Product(
          name: 'Soft Drink',
          category: 'soft drinks...',
       imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD-ApJYnjdULA45Zq384yj6nktnvPRNG-miw&usqp=CAU',
       price: 2.99,
       isPopular: false,
       isRecommended: true,
      ),
  ];
*/
  @override
  //ToDo:implement props ToDo:implement props
  List<Object?>get props => throw UnimplementedError();
}