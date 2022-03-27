import 'package:flutter/material.dart';

class BioPage extends StatelessWidget {
  const BioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iRecognize | Bio Page'),
      ),
      body: const Center(
        child: Text(
          "Bio",
        ),      
      )
    );
  }
}