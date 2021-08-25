import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  PdfViewerController _pdfViewerController = PdfViewerController();
  PdfTextSearchResult _searchResult = PdfTextSearchResult();

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SfPdfViewer.network(
            //   "https://uca0dd29420da5e8fc449714e9e7.dl.dropboxusercontent.com/cd/0/get/BU5qFTvCv6esVeUjRdRfMvbyjXQqHzFWJyshFXnPUBLA_jfOot9sKdZmmCFeH24rNFXTt0RmcfPsMEib_59X-iTduwvG28VZCJXToafDokgaP-nPoXjkrlQfoBrYkeMoRTPUDjOCXQXP7hMzA8s2cGxz/file?dl=1#",
            //   controller: _pdfViewerController,
            // ),
          ],
        ),
      ),
    );
  }
}
