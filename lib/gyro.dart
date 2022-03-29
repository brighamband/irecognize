import 'package:flutter/material.dart';

class GyroPage extends StatelessWidget {
  const GyroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('iRecognize | Gyro Page'),
        ),
        body: const Center(
          child: Text(
            "Gyro",
          ),
        ));
  }
}
