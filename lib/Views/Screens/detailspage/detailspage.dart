import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';
import '../../Utils/list.dart';

class detailspage extends StatelessWidget {
  const detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Center(
          child: Column(
            children: [
              Text(
                "Resume Workspace",
                style: TextStyle(
                    color: Global.textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Build option",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Global.textcolor,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Global.themecolor,
        onPressed: () {
          Navigator.of(context).pushNamed("pdf");
        },
        child: Icon(
          Icons.picture_as_pdf,
          color: Global.textcolor,
        ),
      ),
      body: Column(
        children: [
          ...myoptions
              .map((e) => Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.1,
                            margin: EdgeInsets.all(5),
                            child: Image.asset("${e['icon']}"),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.07),
                          Text(
                            e['name'],
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(e['route_name']);
                            },
                            icon: Icon(CupertinoIcons.forward),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 3,
                      )
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
