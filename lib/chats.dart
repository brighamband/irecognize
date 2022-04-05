import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/received_message_screen.dart';
import 'package:irecognize/send_message_screen.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
    required this.onOwnBio,
    required this.name,
  }) : super(key: key);

  final bool onOwnBio;
  final String name;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
          onBioPage: false, onOwnBio: widget.onOwnBio, name: widget.name),
      body: Container(
        child: ListView(
          children: [
            SentMessageScreen(message: "Hello"),
            ReceivedMessageScreen(message: "Hi, how are you"),
            SentMessageScreen(message: "I am great how are you doing"),
            ReceivedMessageScreen(message: "I am also fine"),
            SentMessageScreen(message: "Can we meet tomorrow?"),
            ReceivedMessageScreen(
                message: "Yes, of course we will meet tomorrow"),
          ],
        ),
      ),
    );
  }
}
