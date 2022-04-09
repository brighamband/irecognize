import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/chats_page.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.person,
    required this.duration,
    required this.time,
    required this.location,
    required this.convo,
  }) : super(key: key);

  final PersonModel person;
  final String duration;
  final String time;
  final String location;
  final List<StatelessWidget> convo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(time),
        subtitle: Text(duration),
        trailing: Text(location, style: TextStyle(color: colorScheme.primary)),
        // Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        //   Text(time),
        //   Text(location, style: const TextStyle(fontSize: 11))
        // ]),
        onTap: () => goToPage(
            context,
            ChatsPage(
              onOwnBio: false,
              person: person,
              convo: convo,
            )),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }
}
