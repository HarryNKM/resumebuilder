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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Experiences",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Company Name",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("New Enterprise,San Fransisco")),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "School/College/Institute",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Quality Test Engineer")),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Roles(Optional)",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           TextFormField(
                            maxLines: 3,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText:
                                    ("Working with team members to come up with new concepts and product analysis...")),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Employed  Status",
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Previously Employed",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.blue),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Currently Employed",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.blue),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Joined Date",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              Text(
                                "Exit Date",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 130,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "DD/MM/YYYY"),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 130,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "DD/MM/YYYY"),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
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
