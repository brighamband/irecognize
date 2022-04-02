import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:irecognize/bio.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/gyro.dart';
import 'package:irecognize/components/person_card.dart';
import 'package:irecognize/models/person.dart';
import 'package:irecognize/utils/theme.dart';

// import this to be able to call json.decode()
import 'dart:convert';

// import this to easily send HTTP request
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _people = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    setState(() {
      _people = data["users"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const Navbar(),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(15),
                child: Text("People Near Me",
                    style: Theme.of(context).textTheme.headline6)),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return PersonCard(name: "John Doe $index");
                }),
            Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Friends I've Talked to Recently",
                    style: Theme.of(context).textTheme.headline6)),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return PersonCard(name: "Sally Mae $index");
                  // return PersonCard(name: _people[index]["name"]);
                }),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GyroPage()),
          );
        },
        tooltip: 'Gyroscope',
        // child: const Icon(Icons.explore),
        child: const Icon(Icons.my_location),
        backgroundColor: colorScheme.tertiary,
      ),
    );
  }
}
