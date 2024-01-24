import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/Views/Screens/Eduction/Eduction.dart';
import 'package:resume_builder_app/Views/Screens/Homepage/homescreen.dart';
import 'package:resume_builder_app/Views/Screens/contect_info/contectinfopage.dart';
import 'package:resume_builder_app/Views/Screens/detailspage/detailspage.dart';
import 'package:resume_builder_app/Views/Screens/experiences/experiences.dart';
import 'package:resume_builder_app/Views/Screens/pdfpage/pdf.dart';
import 'package:resume_builder_app/Views/Screens/persondetail/prersonpage.dart';
import 'package:resume_builder_app/Views/Screens/projectpage/project.dart';

import 'Views/Screens/Spalsh/spalshscreen.dart';
import 'Views/Screens/achievement/achievement.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => Splash(),
        'home': (context) => Home_Page(),
        'detail': (context) => detailspage(),
        'contact_info': (context) => contectpage(),
        'personal_details': (context) => persondetail(),
        'eduction': (context) => eductionpage(),
        'projects': (context) => projectpage(),
        'experiences': (context) => experiencespage(),
        'achievements': (context) => Achievements(),
        'pdf': (context) => pdf_page(),
      },
    ),
  );
}
