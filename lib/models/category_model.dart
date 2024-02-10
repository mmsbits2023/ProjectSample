
import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
 List<Object?>get props =>[name, imageUrl];

  static List<Category>categories= [
    Category(
      name: 'Soft Drink',
       imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD-ApJYnjdULA45Zq384yj6nktnvPRNG-miw&usqp=CAU'
       ),
       Category(
      name: 'Smoothies',
       imageUrl:'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202005/fruit-3222313_1920.jpeg?size=690:388',
       ),
       Category(
      name: 'Water',
       imageUrl:'https://cdn.pixabay.com/photo/2014/12/24/05/02/drop-of-water-578897_1280.jpg',
       ),
       Category(
      name: 'Smoothies',
       imageUrl:'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202005/fruit-3222313_1920.jpeg?size=690:388',

       ),
  ];
}