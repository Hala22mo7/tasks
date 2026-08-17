


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/screens/signup_screen.dart';

class GroceryApp extends StatelessWidget{
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignupScreen(),
    );
  
  }
}
