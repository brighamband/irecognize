import 'package:flutter/material.dart';
import 'package:irecognize/bio.dart';
import 'package:irecognize/gyro.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void goToBioPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BioPage()),
    );
  }

  void goToGyroPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GyroPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.lightBlue[900],
        title: const Text('ADD SEARCHBAR HERE...'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => goToBioPage(),
          )
        ],
      ),
      body: const Center(
        child: Text(
          "Home/Map",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => goToGyroPage(),
        tooltip: 'Gyroscope',
        child: const Icon(Icons.explore),
      ),
    );
  }
}
