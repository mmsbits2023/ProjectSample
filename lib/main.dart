import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:projectfour/bloc/wishlist_bloc.dart';
import 'package:projectfour/bloc/wishlist_event.dart';
import 'package:projectfour/config/app_router.dart';
import 'package:projectfour/config/theme_data.dart';
import 'package:projectfour/screens/screens.dart';
import 'package:projectfour/screens/splash_screen/splash_screen.dart';

void main() async{
 // WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
  //Bloc.observer = SimpleBlocObserver(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers:[
    // BlocProvider(create: (_)=>WishListBloc()..add(StartWishlist())),
     BlocProvider(
          create: (context) => WishListBloc()..add(StartWishlist()),
          child: WishListScreen()
      ),
      ],
      child: MaterialApp(
      title:"Ecommerce",
      debugShowCheckedModeBanner: false,
      theme:theme(),    
     home: HomeScreen(),
     onGenerateRoute: AppRouter.onGenerateRoute,
     initialRoute: HomeScreen.routeName,
  
  
    
    )
   );
  }
}

