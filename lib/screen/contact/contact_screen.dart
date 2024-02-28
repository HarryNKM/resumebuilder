import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return
        SafeArea(child:
            Scaffold(
              appBar:
              AppBar(
                backgroundColor: Colors.blue,
                title: const Text(
                  "Resume Builder",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
              ),
            )
        );
  }
}
