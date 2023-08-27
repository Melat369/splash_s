import 'dart:async';

import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage())))
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [Color(0xffE19898),
                   Color(0xffA2678A)
                   ]
                 ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children:[
                                                Image.asset('assets\images\logo.png', height:300, width:300),
                      Text('Tech News', 
                       textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          ),),
                        ]
                      ),
                      SizedBox(height:50),
                      CircularProgressIndicator(),
                    ],                  
                ),
               )

    );
  }
}