import 'package:flutter/material.dart';
import 'package:pdf_viewer/url_pdf.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer App'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> UrlPdf(url: "https://drive.google.com/uc?export=download&id=13Inceg4dVUvcnzYhzdI-xhmTFL7FDoWJ",)));
          },
          child: Text('Pdf Link'),
        ),
      ),
    );
  }
}
