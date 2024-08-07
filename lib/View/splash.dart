import 'dart:async';

import 'package:adv_mid_eaxm/View/home.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    return Scaffold(

      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:DecorationImage(image: AssetImage('assets/image/logo.png')),
          ),

        ),
      ),
    );
  }
}

