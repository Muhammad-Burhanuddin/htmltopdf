import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import 'pdf.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  PrintingInfo? printingInfo;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final info = await Printing.info();

    setState(() {
      printingInfo = info;
    });
  }

  Future<void> _saveAsFile(
    BuildContext context,
    LayoutCallback build,
    PdfPageFormat pageFormat,
  ) async {
    final bytes = await build(pageFormat);

    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;
    final file = File('$appDocPath/document.pdf');
    print('Save as file ${file.path} ...');
    await file.writeAsBytes(bytes);
    await OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    final actions = <PdfPreviewAction>[
      if (!kIsWeb)
        PdfPreviewAction(
          icon: const Icon(Icons.save),
          onPressed: _saveAsFile,
        )
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter PDF Demo'),
        ),
        body: PdfPreview.builder(
      
        initialPageFormat: PdfPageFormat.a4.landscape,
        canChangeOrientation: false,
       canDebug: false,
          allowPrinting: true,
          
       //   maxPageWidth: double.infinity,
            build: (format) => generateReport(),
            pagesBuilder: (context, pages) => SingleChildScrollView(
              
                  child: Wrap(
                  
                    runSpacing: 8,
                    children: [
                      for (final page in pages)
                        Container(                       
                          color: Colors.white,
                          child: Image(
                            image: page.image,
                                                
                          ),
                        )
                    ],
                  ),
                )
            // (
            //   initialPageFormat: PdfPageFormat.a4,
            //   build: (format) => generateReport(format),
            //   actions: actions,
            // ),
            ));
  }
}
