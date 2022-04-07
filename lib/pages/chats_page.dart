import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/components/received_msg_bubble.dart';
import 'package:irecognize/components/sent_msg_bubble.dart';
import 'package:irecognize/models/person_model.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
    required this.onOwnBio,
    required this.person,
  }) : super(key: key);

  final bool onOwnBio;
  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(onBioPage: false, onOwnBio: onOwnBio, person: person),
      body: ListView(
        children: const [
          SentMsgBubble(message: "Hello"),
          ReceivedMsgBubble(message: "Hi, how are you"),
          SentMsgBubble(message: "I am great how are you doing"),
          ReceivedMsgBubble(message: "I am also fine"),
          SentMsgBubble(message: "Can we meet tomorrow?"),
          ReceivedMsgBubble(message: "Yes, of course we will meet tomorrow"),
        ],
      ),
    );
  }
}
