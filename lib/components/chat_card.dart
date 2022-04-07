import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/chats_page.dart';
import 'package:irecognize/utils/theme.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.person,
    required this.duration,
    required this.time,
    required this.location,
  }) : super(key: key);

  final PersonModel person;
  final String duration;
  final String time;
  final String location;

  void goToChatPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ChatPage(onOwnBio: false, person: person)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(person.name),
        subtitle: Text(duration),
        trailing: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Text(time),
          Text(location, style: const TextStyle(fontSize: 11))
        ]),
        onTap: () => goToChatPage(context),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }
}
