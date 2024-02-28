import 'package:flutter/material.dart';
import 'package:resumebuilder/screen/home/home_screen.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      '/': (context) => HomeScreen()
    }
  ));
}