import 'package:adv_mid_eaxm/Provider/provider.dart';
import 'package:adv_mid_eaxm/View/home.dart';
import 'package:adv_mid_eaxm/View/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ProductProvider(),
      builder: (context,child)=>
       MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),

      ),
    );
  }
}

