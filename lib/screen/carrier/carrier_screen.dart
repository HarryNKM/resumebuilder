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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Carrier Objectives",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Career Objective",
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            textInputAction: TextInputAction.next,
                            maxLines: 6,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Description")),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Designation (Experienced \nCandidate)",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          TextField(
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Software Engineer")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ActionChip(
                    label: Text("Save"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
