import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Projects",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
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
                            "Project Title",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Resume Builder App")),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Technologies",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank_sharp,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "C Programming",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank_sharp,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "C++ ",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank_sharp,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Flutter",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Roles",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                                hintText:
                                    "Organize team members, Code analysis",
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Technologies",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                                hintText: "5 - Programmers",
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Project Description",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                                hintText: "Enter Your Project Description",
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Save"),
                            ),
                          )
                        ],
                      ),
                    ),
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
