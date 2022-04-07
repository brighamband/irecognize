import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/components/received_msg_bubble.dart';
import 'package:irecognize/components/sent_msg_bubble.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/theme.dart';

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
          SentMsgBubble(message: "Hey! What's up?"),
          ReceivedMsgBubble(
              message:
                  "Hey, nothing much, just came to eat my  lunch. Did you finish that 312 assignment yet?"),
          SentMsgBubble(message: "Not yet... working on it lol"),
          ReceivedMsgBubble(
              message: "Yeah that's how it goes. I'm almost done with it."),
          SentMsgBubble(
              message: "Oh no way!? Wanna meet tomorrow to work on it?"),
          ReceivedMsgBubble(
              message:
                  "Sure! By the way I think I'm gonna go see Multiverse of madness next Friday. Wanna come?"),
          SentMsgBubble(
              message: "Yes I've totally been wanting to see that! What time?"),
          ReceivedMsgBubble(
              message: "I'm going to the 3:15 showing at the Orem Cinemark."),
          SentMsgBubble(message: "Sweet yeah I'll see you there"),
          ReceivedMsgBubble(message: "Ok, see ya!")
        ],
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
