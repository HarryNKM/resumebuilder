import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Carrier Objectives",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      )
      );
  }
}
