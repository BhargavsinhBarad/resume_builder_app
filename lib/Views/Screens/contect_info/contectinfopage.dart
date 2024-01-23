import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';

class contectpage extends StatelessWidget {
  const contectpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.15,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Text(
          "Resume Builder",
          style: TextStyle(
              color: Global.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: Global.formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Valid Name";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    Global.name = val;
                  },
                  controller: Global.nameController,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person,
                      size: 55,
                    ),
                    hintText: "Name",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Valid Email";
                    }
                    return null;
                  },
                  controller: Global.emailController,
                  onChanged: (val) {
                    Global.email = val;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      size: 55,
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  maxLength: 10,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Valid Number";
                    }
                    return null;
                  },
                  controller: Global.numberController,
                  onChanged: (val) {
                    Global.number = val;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.phone_android_sharp,
                      size: 55,
                    ),
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Valid Address";
                    }
                    return null;
                  },
                  controller: Global.cityController,
                  onChanged: (val) {
                    Global.city = val;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.location_on,
                      size: 55,
                    ),
                    hintText: "City",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
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
