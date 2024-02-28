import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TechnicalScreen extends StatefulWidget {
  const TechnicalScreen({super.key});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Technical Skills",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      )
      );
  }
}
