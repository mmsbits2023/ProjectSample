import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  {
  final String title;

  const CustomAppBar({
    Key ? key,
  required this.title,
  }):super(key: key);
 
 // @override
  //Size get preferredSize => Size.fromHeight(50.0);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          title: Container(
            color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Center(
            child: Text(
             title,
            style: Theme.of(context).textTheme.headline2 !.copyWith(color: Colors.white)),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [IconButton(onPressed: (){
          Navigator.pushNamed(context,'/favourite');
        }, icon: Icon(Icons.favorite))],
      );
  }
}