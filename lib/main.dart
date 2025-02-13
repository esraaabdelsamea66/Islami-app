import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/Home/home_screen.dart';
import 'package:islami_app/ui/splash/screen/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        SplashScreen.RouteName:(context)=>SplashScreen(),
        HomeScreen.RouteName:(context)=>HomeScreen()
      },
      initialRoute: SplashScreen.RouteName,









    );


  }
}

