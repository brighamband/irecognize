import 'package:flutter/material.dart';
import 'package:irecognize/chats.dart';
import 'package:irecognize/utils/theme.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({
    Key? key,
    required this.name,
    required this.duration,
    required this.time,
    required this.location,
  }) : super(key: key);

  final String name;
  final String duration;
  final String time;
  final String location;

  @override
  State<StatefulWidget> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  void goToChatPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ChatPage(onOwnBio: false, name: widget.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.name),
        subtitle: Text(widget.duration),
        trailing: Text(widget.time),
        onTap: () => goToChatPage(),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }
}
