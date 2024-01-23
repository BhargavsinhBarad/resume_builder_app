import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../Utils/global.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({super.key});

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  final pdf = pw.Document();

  generatepdf() async {
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Row(
          children: [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.Text("Introduction", style: Global.stylepdf2),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Container(
                  width: 225,
                  child: pw.Text("${Global.about}", style: Global.stylepdf),
                ),
                pw.Text("Contact Details", style: Global.stylepdf2),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Text(
                  "Name : ${Global.name}",
                  style: Global.stylepdf,
                ),
                pw.Text(
                  "Email : ${Global.email}",
                  style: Global.stylepdf,
                ),
                pw.Text(
                  "Phone : ${Global.number}",
                  style: Global.stylepdf,
                ),
                pw.Text(
                  "City : ${Global.city}",
                  style: Global.stylepdf,
                ),
                pw.SizedBox(
                  height: 22,
                ),
                pw.Text("Personal Details", style: Global.stylepdf2),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Text(
                  "DOB : ${Global.datetime}",
                  style: Global.stylepdf,
                ),
                pw.Text(
                  "Marital Status : ${Global.maritalstatus}",
                  style: Global.stylepdf,
                ),
                pw.Text(
                  "Nationality : ${Global.nation}",
                  style: Global.stylepdf,
                ),
                pw.SizedBox(
                  height: 22,
                ),
                pw.Text(
                  "Eduction",
                  style: Global.stylepdf2,
                ),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Text(
                  "${Global.course} \n ${Global.school}, ${Global.year}",
                  style: Global.stylepdf,
                ),
                pw.SizedBox(
                  height: 18,
                ),
                pw.Text("Languages", style: Global.stylepdf2),
                pw.SizedBox(),
                (Global.english == true)
                    ? pw.Text("English", style: Global.stylepdf)
                    : pw.Text(""),
                (Global.hindi == true)
                    ? pw.Text("Hindi", style: Global.stylepdf)
                    : pw.Text(""),
                (Global.gujarati == true)
                    ? pw.Text("Gujarati", style: Global.stylepdf)
                    : pw.Text(""),
              ],
            ),
            pw.SizedBox(
              width: 22,
            ),
            pw.Column(
              children: [
                pw.Text("Experiences", style: Global.stylepdf2),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Text("Company : ${Global.cname}", style: Global.stylepdf),
                pw.Text("Years : ${Global.eyear}", style: Global.stylepdf),
                pw.Text("Roles : ${Global.role}", style: Global.stylepdf),
                pw.Text("Status : ${Global.Empstatus}", style: Global.stylepdf),
                pw.SizedBox(
                  height: 22,
                ),
                pw.Text("Project", style: Global.stylepdf2),
                pw.Text("Title : ${Global.titl}", style: Global.stylepdf),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    generatepdf();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}
