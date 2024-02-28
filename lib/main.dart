import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resumebuilder/screen/home/home_screen.dart';
import 'package:resumebuilder/utils/routes/routes.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.blue,systemNavigationBarColor: Colors.blue),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  
  runApp(MaterialApp(debugShowCheckedModeBanner: false, routes: app_routes));
}
