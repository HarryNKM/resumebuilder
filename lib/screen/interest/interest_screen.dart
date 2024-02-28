import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Interest/Hobbies",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      )
      );
  }
}
