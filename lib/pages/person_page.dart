import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/components/highlights_card.dart';
import 'package:irecognize/components/location_card.dart';
import 'package:irecognize/components/chat_card.dart';
import 'package:irecognize/components/person/pic_name_card.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final PersonModel person;

  Widget renderAboutSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
      ),
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return HighlightsCard(
              title: ABOUT_LIST[index].title, info: ABOUT_LIST[index].info);
        },
      ),
    ]));
  }

  Widget renderPlacesSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(
            15), //child: Text("Places", style: Theme.of(context).textTheme.headline6)
      ),
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return LocationCard(
                location: PLACES_LIST[index].location,
                url: PLACES_LIST[index].url);
          })
    ]));
  }

  Widget renderFriendsSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
      ),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: MY_FRIENDS.length,
          itemBuilder: (BuildContext context, int index) {
            if (MY_FRIENDS[index].name != person.name) {
              return PicNameCard(person: MY_FRIENDS[index]);
            } else {
              return PicNameCard(
                  person:
                      PersonModel('Fake User', TEMP_TAGLINE, TEST_USER_IMG));
            }
          }),
    ]));
  }

  Widget renderChatsSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
      ),
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ChatCard(
                person: person,
                duration: CHATS_LIST[index].duration,
                time: CHATS_LIST[index].time,
                location: CHATS_LIST[index].location);
          })
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: Navbar(currPage: PERSON_PAGE, person: person),
          body: TabBarView(
            children: [
              renderAboutSection(context),
              renderPlacesSection(context),
              renderFriendsSection(context),
              renderChatsSection(context),
            ],
          )),
    );
  }
}
