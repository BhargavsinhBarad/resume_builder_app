import 'package:flutter/material.dart';

class Global {
  static Color themecolor = Colors.red;
  static Color textcolor = Colors.white;

  static String name = "";
  static String email = "";
  static String number = "";
  static String city = "";
  static GlobalKey<FormState> formkey = GlobalKey<FormState>();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController numberController = TextEditingController();
  static TextEditingController cityController = TextEditingController();

  static bool? english = false;
  static bool? hindi = false;
  static bool? gujarati = false;
  static String? maritalstatus;
  static String? datetime;
  static String? nation;
  static TextStyle style3 = TextStyle(
    fontSize: 16,
    color: Colors.red,
  );
  static String? course;
  static String? school;
  static String? cgpa;
  static String? year;

  static String? titl;
  static String? tecono;
  static String? des;
  static bool? c = false;
  static bool? cp = false;
  static bool? flutter = false;
  static bool? roles = false;

  static String? cname;
  static String? school1;
  static String? Empstatus;
  static String? role;
}
