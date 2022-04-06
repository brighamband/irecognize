import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: Navbar(currPage: PERSON_PAGE, person: person),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                    "Info about ${person.name} that we've discussed ... Add social media links"),
              ),
              Center(
                child:
                    Text("Mutual places I've shared with ${person.name} ..."),
              ),
              Center(
                child:
                    Text("Mutual friends I've shared with ${person.name} ..."),
              ),
              Center(
                child: Text("Mutual chats I've shared with ${person.name} ..."),
              ),
            ],
          )),
    );
  }
}
