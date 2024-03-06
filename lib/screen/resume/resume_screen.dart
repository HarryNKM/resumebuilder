import 'package:flutter/material.dart';

import '../../utils/global.dart';
class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Resume",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("${g1.contactName}"),
          Text("${g1.contactEmail}"),
          Text("${g1.contactNo}"),
          Text("${g1.contactAddress}"),
        ],
      ),
    );
  }
}

