import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class Global {
  static Color themecolor = Colors.red;
  static Color textcolor = Colors.white;
  static pw.TextStyle stylepdf = pw.TextStyle(
    fontSize: 20,
  );
  static pw.TextStyle stylepdf2 = pw.TextStyle(
    fontSize: 30,
    fontWeight: pw.FontWeight.bold,
  );
  static TextStyle style3 = TextStyle(
    fontSize: 16,
    color: Colors.red,
  );

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
  static String? about;
  static String? nation;

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
  static String? roles;

  static String? cname;
  static String? eyear;
  static String? Empstatus;
  static String? role;
}
