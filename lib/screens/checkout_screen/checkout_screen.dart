import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectfour/common_widgets/custom_appbar.dart';
import 'package:projectfour/common_widgets/custom_navbar.dart';
import 'package:projectfour/common_widgets/order_summary.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName='/checkout';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name:routeName),
      builder: (context)=>CheckoutScreen()
      );
  }
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController=TextEditingController();
    final TextEditingController nameController=TextEditingController();
    final TextEditingController addressController=TextEditingController();
    final TextEditingController cityController=TextEditingController();
    final TextEditingController countryController=TextEditingController();
    final TextEditingController zipCodeController=TextEditingController();
    return Scaffold(
      appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(60), //height of appbar
                child:CustomAppBar(title:'Checkout'),
              ),
      bottomNavigationBar: CustomNavBar(),
    
    body:Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text('CUSTOMER INFORMATION',
         style: Theme.of(context).textTheme.headline3,),
          _buildTextFormField(emailController,context,'Email'),
           _buildTextFormField(nameController,context,'Full Name'),

          Text('DELIVERY INFORMATION',
         style: Theme.of(context).textTheme.headline3,),
          _buildTextFormField(addressController,context,'Address'),
           _buildTextFormField(cityController,context,'City'),
            _buildTextFormField(countryController,context,'Country'),
           _buildTextFormField(zipCodeController,context,'Zip COde'),
           
        
         Text('ORDER INFORMATION',
         style: Theme.of(context).textTheme.headline3,),
        //OrderSummary()
        ],
      ),
    )
    );
  }

  Padding _buildTextFormField(
    TextEditingController controller,
    BuildContext context,
    String labelText,
  ){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
         SizedBox(
          width: 75,
          child: Text(labelText,
          style: Theme.of(context).textTheme.bodyText1,
          ),
         ) ,
         Expanded(
          child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.only(left: 10),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              )
            )
          ),
         ),
         )
        ],
      ),
      );
  }
}