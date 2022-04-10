import 'package:flutter/material.dart';
import 'package:irecognize/models/about_model.dart';
import 'package:irecognize/models/chat_model.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/models/places_model.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/components/cards/chat_card.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

import '../components/bars/navbar.dart';
import '../components/cards/about_card.dart';
import '../components/cards/location_card.dart';
import '../components/containers/person_list.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final PersonModel person;

  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  List<AboutModel> _aboutList = ABOUT_LIST;
  List<PlacesModel> _placesList = PLACES_LIST;
  List<ChatModel> _chatsList = CHATS_LIST;

  final ScrollController _scrollController = ScrollController();

  void refreshPersonPage() {
    setState(() {
      _aboutList = REFRESH_ABOUT_LIST;
      _placesList = REFRESH_PLACES_LIST;
      _chatsList = REFRESH_CHATS_LIST;
      _scrollController.animateTo(_scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  Widget renderAboutSection(BuildContext context) {
    return SingleChildScrollView(
        controller: _scrollController,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
              child: Text("More about ${widget.person.name}",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: colorScheme.onBackground,
                      fontWeight: FontWeight.w300))),
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _aboutList.length,
            itemBuilder: (BuildContext context, int index) {
              return AboutCard(about: _aboutList[index]);
            },
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextButton(
                  onPressed: () => refreshPersonPage(),
                  child: Text('REFRESH',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: colorScheme.tertiary,
                          fontWeight: FontWeight.w400))))
        ]));
  }

  Widget renderPlacesSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("Where Our Paths Have Crossed",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: colorScheme.onBackground,
                  fontWeight: FontWeight.w300))),
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _placesList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return LocationCard(
                location: _placesList[index].location,
                url: _placesList[index].url,
                date: _placesList[index].date);
          })
    ]));
  }

  Widget renderFriendsSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("Our Mutual Friends",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: colorScheme.onBackground,
                  fontWeight: FontWeight.w300))),
      PersonList(
          people: getTheirFriends(widget.person), emptyMsg: 'No mutual friends')
    ]));
  }

  Widget renderChatsSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 16.0),
          child: Text("Our In-Person Chats",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: colorScheme.onBackground,
                  fontWeight: FontWeight.w300))),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _chatsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ChatCard(person: widget.person, chat: _chatsList[index]);
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
          appBar: Navbar(currPage: PERSON_PAGE, person: widget.person),
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
