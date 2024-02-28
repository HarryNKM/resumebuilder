import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resumebuilder/screen/home/home_screen.dart';
import 'package:resumebuilder/utils/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.blue,systemNavigationBarColor: Colors.blue),
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, routes: app_routes));
}
