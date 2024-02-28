import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Resume Builder",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 10),
              height: 80,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text(
                "Builder Options",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Listdata(
                        title: 'Contact Info',
                        icon: 'contact-books.png',
                        path: 'contact'),
                    Listdata(
                        title: 'Carrier Objectives',
                        icon: 'briefcase.png',
                        path: 'carrier'),
                    Listdata(
                        title: 'Personal Details',
                        icon: 'user.png',
                        path: 'personal'),
                    Listdata(
                        title: 'Education',
                        icon: 'mortarboard.png',
                        path: 'education'),
                    Listdata(
                        title: 'Experiences',
                        icon: 'thinking.png',
                        path: 'experience'),
                    Listdata(
                        title: 'Technical Skils',
                        icon: 'experience.png',
                        path: 'technical'),
                    Listdata(
                        title: 'Interest/Hobbies',
                        icon: 'open-book.png',
                        path: 'interest'),
                    Listdata(
                        title: 'Projects',
                        icon: 'project.png',
                        path: 'project'),
                    Listdata(
                        title: 'Achievements',
                        icon: 'achievement.png',
                        path: 'achieve'),
                    Listdata(
                        title: 'References',
                        icon: 'handshake.png',
                        path: 'reference'),
                    Listdata(
                        title: 'Declaration',
                        icon: 'declaration.png',
                        path: 'declaration'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Listdata(
      {required String title, required String icon, required String path}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '$path');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/$icon",
                    height: 30,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "$title",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
