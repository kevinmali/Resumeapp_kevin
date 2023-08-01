
import 'package:flutter/material.dart';
import 'package:untitled/Screens/Achievement.dart';
import 'package:untitled/Screens/Carrier_Objective.dart';
import 'package:untitled/Screens/Contact_info.dart';
import 'package:untitled/Screens/Declaration.dart';
import 'package:untitled/Screens/Eduction_page.dart';
import 'package:untitled/Screens/Experiences_page.dart';
import 'package:untitled/Screens/Hobbies.dart';
import 'package:untitled/Screens/Pdf_page.dart';
import 'package:untitled/Screens/Personal_Details.dart';
import 'package:untitled/Screens/Project.dart';
import 'package:untitled/Screens/Refernces.dart';
import 'package:untitled/Screens/Splash.dart';
import 'package:untitled/Screens/Technical_Skills.dart';
import 'package:untitled/Screens/buildoptions.dart';
import 'package:untitled/Screens/home_page.dart';
import 'package:untitled/Screens/singin_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    routes: {
      '/': (context) => const Splash(),
      'sing': (context) => const Singin(),
      'home': (context) => const Homepage(),
      'options': (context) => const Buildoption(),
      'Contact': (context) => const Contact(),
      'Carrier': (context) => const Carrier(),
      'Personal': (context) => const Personal(),
      'Eduction': (context) => const Eduction(),
      'Experiences': (context) => const Experiences(),
      'Technical': (context) => const Technical(),
      'Interest': (context) => const Interest(),
      'Project': (context) => const Project(),
      'Achievement': (context) => const Achievements(),
      'Refernce': (context) => const Refernces(),
      'Declaration': (context) => const Declaration(),
      'pdf' : (context) => pdf_page(),
    },
  ));
}
