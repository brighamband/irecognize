import 'package:flutter/material.dart';
import 'package:irecognize/models/chat_model.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/chats_page.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.person, required this.chat})
      : super(key: key);

  final PersonModel person;
  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(chat.time),
        subtitle: Text(chat.duration),
        trailing: chat.isNew
            ? Icon(Icons.new_releases, color: colorScheme.tertiary)
            : Text(chat.location, style: TextStyle(color: colorScheme.primary)),
        onTap: () => goToPage(
            context,
            ChatsPage(
              onOwnBio: false,
              person: person,
              convo: chat.convo,
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
