import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Experiences",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      )
      );
  }
}
