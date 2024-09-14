import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class UrlPdf extends StatelessWidget {
  final String url;

  const UrlPdf({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pdf View'),
        backgroundColor: Colors.green,
      ),
      body: SfPdfViewer.network(
        url,
        onDocumentLoadFailed: (details) {
          Text('hi');
        },
        canShowScrollHead: true,
        canShowScrollStatus: true,
      ),
    );
  }
}
