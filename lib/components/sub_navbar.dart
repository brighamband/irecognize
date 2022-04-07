import 'package:flutter/material.dart';
import 'package:irecognize/components/person/profile_pic.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class SubNavbar extends StatelessWidget implements PreferredSizeWidget {
  const SubNavbar({required this.currPage, required this.person, Key? key})
      : super(key: key);

  final String? currPage;
  final PersonModel person;

  Widget getBioBar(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          margin: const EdgeInsets.all(10.0),
          child: ProfilePic(
            imageUrl: person.imageUrl,
          )),
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(person.name,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: colorScheme.primary)),
        Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Text(person.tagline,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: colorScheme.onSurface)))
      ]))
    ]);
  }

  Widget onlyRenderBio(BuildContext context) {
    return Column(children: [getBioBar(context)]);
  }

  Widget renderBothBioAndMutual(BuildContext context) {
    return Column(children: [
      getBioBar(context),
      TabBar(
        tabs: const [
          Tab(text: 'About', icon: Icon(Icons.info)),
          Tab(text: 'Places', icon: Icon(Icons.location_on)),
          Tab(text: 'Friends', icon: Icon(Icons.people_alt_sharp)),
          Tab(text: 'Chats', icon: Icon(Icons.record_voice_over_sharp))
        ],
        labelColor: colorScheme.primary,
        indicatorColor: colorScheme.tertiary,
        indicatorWeight: 3.0,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return currPage == PERSON_PAGE
        ? renderBothBioAndMutual(context)
        : onlyRenderBio(context);
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(1.0); // This isn't needed, defined in Navbar
}
