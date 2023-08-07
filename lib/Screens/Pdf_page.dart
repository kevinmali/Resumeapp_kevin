import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:untitled/utils/global_page.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({super.key});

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {

  final pdf = pw.Document();



  generatepdf() async {
    final ByteData bytes = await rootBundle.load('lib/utils/Assets/splacelogo/download.jpg');
    final logobytes = bytes.buffer.asUint8List();
    final ByteData bytes1 = await rootBundle.load('lib/utils/Assets/splacelogo/logo.jpeg');
    final logobytes1 = bytes1.buffer.asUint8List();

    pdf.addPage(pw.Page(pageFormat:PdfPageFormat.a4,build:(context)=>
        pw.Center( child :
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                children: [
                  pw.Container(
                  height: 200,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    image: pw.DecorationImage(
                      image: pw.MemoryImage(logobytes,),
                    ),
                  ),
                ),
                  pw.Spacer(),
                  pw.Container(
                    height: 200,
                    width: 200,
                    decoration: pw.BoxDecoration(
                      image: pw.DecorationImage(
                        image: pw.MemoryImage(logobytes1),
                      ),
                    ),
                  ),
          ],
              ),
            pw.Spacer(),
            pw.Text("${Globals.name}",style: pw.TextStyle(fontSize: 35),),
            pw.Text("${Globals.email}",style: pw.TextStyle(fontSize: 35),),
            pw.Text("${Globals.number}",style: pw.TextStyle(fontSize: 35),),
          ],),
        ),
    ),);
  }
  @override
  void initState() {
    super.initState();
    generatepdf();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(build: (format) => pdf.save(),),
    );
  }
}
