import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeclarationScreen extends StatefulWidget {
  const DeclarationScreen({super.key});

  @override
  State<DeclarationScreen> createState() => _DeclarationScreenState();
}

class _DeclarationScreenState extends State<DeclarationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Declaration",
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Declaration",
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          ),
                          Icon(
                            Icons.radio_button_on,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Descrition",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          Text(
                            "Place(Interview \nvenue/City)",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: ElevatedButton(onPressed:() {

                        }, child: Text("Save")),
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
