import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/Views/Utils/global.dart';

class experiencespage extends StatefulWidget {
  const experiencespage({super.key});

  @override
  State<experiencespage> createState() => _experiencespageState();
}

class _experiencespageState extends State<experiencespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Text(
          "experiences",
          style: TextStyle(
              color: Global.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Company Name",
                style: Global.style3,
              ),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.cname = val;
                },
                decoration: const InputDecoration(
                    hintText: "New Enterprise, San Francisco",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "School/College/Institute",
                style: Global.style3,
              ),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.school1 = val;
                },
                decoration: const InputDecoration(
                    hintText: "New Enterprise, San Francisco",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "Roles(optional)",
                style: Global.style3,
              ),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.role = val;
                },
                decoration: const InputDecoration(
                    hintText:
                        "Working with team members to come up with new concepts and product analysis",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Employed Status",
                style: Global.style3,
              ),
              RadioListTile(
                  activeColor: Colors.blue,
                  title: const Text("Previously Employed"),
                  value: "Previously",
                  groupValue: Global.Empstatus,
                  onChanged: (val) {
                    setState(() {
                      Global.Empstatus = val;
                    });
                  }),
              RadioListTile(
                activeColor: Colors.blue,
                title: const Text("Currentiy Employed"),
                value: "Currentiy",
                groupValue: Global.Empstatus,
                onChanged: (val) {
                  setState(() {
                    Global.Empstatus = val;
                  });
                },
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
