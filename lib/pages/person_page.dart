import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/components/cards/chat_card.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

import '../components/bars/navbar.dart';
import '../components/cards/about_card.dart';
import '../components/cards/location_card.dart';
import '../components/containers/person_list.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final PersonModel person;

  Widget renderAboutSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("More about ${person.name}",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: colorScheme.onBackground))),
      ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return AboutCard(
              title: ABOUT_LIST[index].title, info: ABOUT_LIST[index].info);
        },
      ),
    ]));
  }

  Widget renderPlacesSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("Where Our Paths Have Crossed",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: colorScheme.onBackground))),
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return LocationCard(
                location: PLACES_LIST[index].location,
                url: PLACES_LIST[index].url,
                date: PLACES_LIST[index].date);
          })
    ]));
  }

  Widget renderFriendsSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("Our Mutual Friends",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: colorScheme.onBackground))),
      PersonList(people: getTheirFriends(person), emptyMsg: 'No mutual friends')
    ]));
  }

  Widget renderChatsSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("Our In-Person Chats",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: colorScheme.onBackground))),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ChatCard(
              person: person,
              duration: CHATS_LIST[index].duration,
              time: CHATS_LIST[index].time,
              location: CHATS_LIST[index].location,
              convo: CHATS_LIST[index].convo,
            );
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
