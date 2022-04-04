import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/components/location_card.dart';
import 'package:irecognize/components/highlights_card.dart';
import 'package:irecognize/components/person_card.dart';
import 'package:irecognize/components/chat_card.dart';

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
                  Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Highlights",
                            style: Theme.of(context).textTheme.headline6)),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return HighlightsCard(
                              title: "Title of highlight",
                              info: "Filler info here. Can be short or long.");
                        }),
                  ]),
                  Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Highlights",
                            style: Theme.of(context).textTheme.headline6)),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return LocationCard(
                              location: "Name of Location Here!");
                        }),
                  ]),
                  Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Highlights",
                            style: Theme.of(context).textTheme.headline6)),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return PersonCard(name: "Friend #$index");
                        }),
                  ]),
                  Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Highlights",
                            style: Theme.of(context).textTheme.headline6)),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ChatCard(
                              name: "$name",
                              duration: "5 min.",
                              time: "10:41 AM",
                              location: "BNSN W111");
                        }),
                  ]),
                ],
              )
            : const Center(child: Text("FIXME - Display friends and chats???")),
      ),
    );
  }
}
