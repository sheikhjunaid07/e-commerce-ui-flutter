import 'dart:async';

import 'package:e_com_ui/pages/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/splash_screen.png",fit: BoxFit.cover),
    );
  }
}
