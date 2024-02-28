import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AchieveScreen extends StatefulWidget {
  const AchieveScreen({super.key});

  @override
  State<AchieveScreen> createState() => _AchieveScreenState();
}

class _AchieveScreenState extends State<AchieveScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Achievements",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      )
      );
  }
}
