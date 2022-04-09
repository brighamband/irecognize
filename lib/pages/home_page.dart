import 'package:flutter/material.dart';
import 'package:irecognize/pages/gyro_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

import '../components/bars/navbar.dart';
import '../components/containers/person_grid.dart';
import '../components/containers/person_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(person: CURRENT_USER),
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
            PersonGrid(people: PEOPLE_NEAR_ME, emptyMsg: "No one's around me"),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Friends I've Talked to Recently",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: colorScheme.onBackground))),
            PersonList(
                people: MY_TALKED_TO_RECENTLY,
                emptyMsg: 'Sadly no one... Go change it!'),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          goToPage(context, GyroPage());
        },
        tooltip: 'Gyroscope',
        child: const Icon(Icons.my_location),
        backgroundColor: colorScheme.tertiary,
      ),
    );
  }
}
