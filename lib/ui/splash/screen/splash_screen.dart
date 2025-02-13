import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/style/assetsManeger.dart';
import 'package:islami_app/ui/Home/home_screen.dart';

class SplashScreen extends StatefulWidget {
static const String RouteName="splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
        seconds: 2
    ), (){
      Navigator.pushReplacementNamed(context, HomeScreen.RouteName);
    });
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Image.asset(AssetsManger.Splash,width: double.infinity,fit: BoxFit.fill,),

      ),
    );
  }
}
