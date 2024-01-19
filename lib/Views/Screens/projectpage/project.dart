import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';

class projectpage extends StatefulWidget {
  const projectpage({super.key});

  @override
  State<projectpage> createState() => _projectpageState();
}

class _projectpageState extends State<projectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        title: Text(
          "Project",
          style: TextStyle(
              color: Global.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        foregroundColor: Global.textcolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Title",
                style: Global.style3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.titl = val;
                },
                decoration: InputDecoration(
                    hintText: "Resumne Builder App",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Project Title",
                style: Global.style3,
              ),
              Row(
                children: [
                  Checkbox(
                      value: Global.c,
                      onChanged: (val) {
                        setState(() {
                          Global.c = val;
                        });
                      }),
                  Text("C Programming"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: Global.cp,
                      onChanged: (val) {
                        setState(() {
                          Global.cp = val;
                        });
                      }),
                  Text("C++"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: Global.flutter,
                      onChanged: (val) {
                        setState(() {
                          Global.flutter = val;
                        });
                      }),
                  Text("Flutter"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Roles",
                style: Global.style3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.roles = val as bool?;
                },
                decoration: InputDecoration(
                    hintText: "Organize team members,code",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Technologies",
                style: Global.style3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.tecono = val;
                },
                decoration: InputDecoration(
                    hintText: "5 - programmers", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Project Descripation",
                style: Global.style3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.des = val;
                },
                decoration: InputDecoration(
                    hintText: "Enter your Project Descripation",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: Get.height * 0.09,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Global.textcolor),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Global.themecolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
