import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/components/received_msg_bubble.dart';
import 'package:irecognize/components/sent_msg_bubble.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
    required this.onOwnBio,
    required this.person,
    required this.convo,
  }) : super(key: key);

  final bool onOwnBio;
  final PersonModel person;
  final List<StatelessWidget> convo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(onBioPage: false, onOwnBio: onOwnBio, person: person),
      body: ListView(
        children: convo,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Play back conversation',
        child: const Icon(Icons.play_arrow),
        // Icon(Icons.explore)
        backgroundColor: colorScheme.tertiary,
      ),
    );
  }
}
