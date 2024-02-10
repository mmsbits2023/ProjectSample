
import 'package:equatable/equatable.dart';


class Product extends Equatable{
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  }) ;

  @override
  List<Object?>get props => [
    name,
    category,
    imageUrl,
    price,
    isPopular,
    isRecommended];

    static List<Product>products = [
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
       Product(
          name: 'Soft Drink',
          category: 'soft drinks...',
       imageUrl:'https://t3.ftcdn.net/jpg/03/69/56/02/360_F_369560255_ze7zKUVKic1yQKzmXOSym2shcEyGqKPg.jpg',
       price: 2.99,
       isPopular: true,
       isRecommended: true,
      ),
       Product(
          name: 'Smoothies',
          category: 'Smothiees...',
       imageUrl:'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202005/fruit-3222313_1920.jpeg?size=690:388',
       price: 5.99,
       isPopular: false,
       isRecommended: true,
      ),
    ];
}
