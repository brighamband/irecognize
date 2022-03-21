import 'package:flutter/material.dart';

class HomeMapRoute extends StatelessWidget {
  const HomeMapRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iRecognize | Home/Map Route'),
      ),
      body: const Center(
        child: Text(
          "Home/Map",
        ),      
      )
    );
  }
}