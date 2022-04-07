import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/components/highlights_card.dart';
import 'package:irecognize/components/location_card.dart';
import 'package:irecognize/components/chat_card.dart';
import 'package:irecognize/components/person/person_list.dart';
import 'package:flutter/material.dart';
import 'package:irecognize/components/person/pic_name_card.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final PersonModel person;

  Widget renderAboutSection(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
      ),
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return HighlightsCard(
                title: "Title of About",
                info: "Filler info here. Can be short or long.");
          })
    ]);
  }

  Widget renderPlacesSection(BuildContext context) {
    return Column(children: <Widget>[
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
                location: "Wilk Ballroom",
                url:
                    "https://www.google.com/maps/place/Ernest+L.+Wilkinson+Student+Center,+1+Campus+Dr,+Provo,+UT+84604/@40.2485515,-111.6494108,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90b9ee679dc3:0x1937fe0d8a468f80!8m2!3d40.2485515!4d-111.6472221");
          })
    ]);
  }

  Widget renderFriendsSection(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
      ),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            if (FAKE_PEOPLE[index].name != person.name) {
              return PicNameCard(person: FAKE_PEOPLE[index]);
            } else {
              return PicNameCard(
                  person:
                      PersonModel(0, 'Fake User', TEMP_TAGLINE, TEST_USER_IMG));
            }
          }),
    ]);
  }

  Widget renderChatsSection(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
      ),
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            if (FAKE_PEOPLE[index].name == person.name) {
              return ChatCard(
                  person:
                      PersonModel(0, 'Fake User', TEMP_TAGLINE, TEST_USER_IMG),
                  duration: "5 mins",
                  time: "10:41 AM",
                  location: "BNSN W111");
            } else {
              return ChatCard(
                  person: FAKE_PEOPLE[index],
                  duration: "5 mins",
                  time: "10:41 AM",
                  location: "BNSN W111");
            }
          })
    ]);
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
