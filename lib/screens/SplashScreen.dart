import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    startTimer();
    super.initState();
  }
  startTimer(){
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: 300,
        height: 300,
        child: Image.asset("assets/images/logoBlood.png"),
      ),
    );
  }
  
}