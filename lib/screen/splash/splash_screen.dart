import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>

{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        body: Center
          (
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
        ),
      )
      );
  }
}
