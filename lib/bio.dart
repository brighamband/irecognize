import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';

class BioPage extends StatelessWidget {
  const BioPage({
    Key? key,
    required this.onOwnBio,
    required this.name,
  }) : super(key: key);

  final bool onOwnBio;
  final String name;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Navbar(onBioPage: true, onOwnBio: onOwnBio, name: name),
        body: !onOwnBio
            ? TabBarView(
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
              )
            : const Center(child: Text("FIXME - Display friends and chats???")),
      ),
    );
  }
}
