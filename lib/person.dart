import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/utils/constants.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: Navbar(currPage: PERSON_PAGE, name: name),
          body: TabBarView(
            children: [
              Center(
                child: Text("Mutual highlights I've shared with $name ..."),
              ),
              Center(
                child: Text("Mutual places I've shared with $name ..."),
              ),
              Center(
                child: Text("Mutual friends I've shared with $name ..."),
              ),
              Center(
                child: Text("Mutual chats I've shared with $name ..."),
              ),
            ],
          )),
    );
  }
}
