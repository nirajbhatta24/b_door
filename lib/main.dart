import 'package:b_door/screens/LoginScreen.dart';
import 'package:b_door/screens/RegisterScreen.dart';
import 'package:b_door/theme/ThemeData.dart';
import 'package:flutter/material.dart';
import 'package:b_door/screens/SplashScreen.dart';

void main() async{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: getApplicationTheme(),
    routes: {
      "/":(context)=>const SplashScreen(),
      '/login':(context)=>const LoginScreen(),
      // '/dashboard':(context)=>const DashboardScreen(),
      '/register':(context)=>const RegisterScreen()


    },
  ));
}