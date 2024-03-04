import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({super.key});

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar:
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "References",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reference Name",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: ("Suresh Shah")),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Designation",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: ("Marketing Managee , ID -342332")),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Organization/Institue",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: ("Green Energy Pvt.Ltd")),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: ElevatedButton(onPressed: () {

                        },child: Text("Save"),),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
