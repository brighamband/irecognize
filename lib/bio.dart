import 'package:flutter/material.dart';

class BioRoute extends StatelessWidget {
  const BioRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iRecognize | Bio Route'),
      ),
      body: const Center(
        child: Text(
          "Bio",
        ),      
      )
    );
  }
}