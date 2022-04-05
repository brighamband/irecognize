import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/gyro.dart';
import 'package:irecognize/components/person_list.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(
        name: CURRENT_USER_NAME,
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("People Near Me",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: colorScheme.onBackground))),
            const PersonList(),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Friends I've Talked to Recently",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: colorScheme.onBackground))),
            const PersonList(),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GyroPage()),
          );
        },
        tooltip: 'Gyroscope',
        child: const Icon(Icons.my_location),
        // Icon(Icons.explore)
        backgroundColor: colorScheme.tertiary,
      ),
    );
  }
}
