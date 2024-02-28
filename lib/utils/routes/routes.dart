import 'package:flutter/cupertino.dart';
import 'package:resumebuilder/screen/achievement/achievement_screen.dart';
import 'package:resumebuilder/screen/carrier/carrier_screen.dart';
import 'package:resumebuilder/screen/contact/contact_screen.dart';
import 'package:resumebuilder/screen/declaration/declaration_screen.dart';
import 'package:resumebuilder/screen/education/education_screen.dart';
import 'package:resumebuilder/screen/experience/experience_screen.dart';
import 'package:resumebuilder/screen/home/home_screen.dart';
import 'package:resumebuilder/screen/interest/interest_screen.dart';
import 'package:resumebuilder/screen/personal/personal_screen.dart';
import 'package:resumebuilder/screen/projects/project_screen.dart';
import 'package:resumebuilder/screen/reference/reference_screen.dart';
import 'package:resumebuilder/screen/splash/splash_screen.dart';
import 'package:resumebuilder/screen/technical/technical_screen.dart';

Map<String,WidgetBuilder> app_routes={
  '/':(context) => SplashScreen(),
  'home':(context) => HomeScreen(),
  'contact':(context) => ContactScreen(),
  'carrier':(context) => CarrierScreen(),
  'personal':(context) => PersonalScreen(),
  'education':(context) => EducationScreen(),
  'experience':(context) => ExperienceScreen(),
  'technical':(context) => TechnicalScreen(),
  'interest':(context) => InterestScreen(),
  'project':(context) => ProjectScreen(),
  'achieve':(context) => AchieveScreen(),
  'reference':(context) => ReferenceScreen(),
  'declaration':(context) => DeclarationScreen(),
};

