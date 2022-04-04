import 'package:flutter/material.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class SubNavbar extends StatelessWidget implements PreferredSizeWidget {
  const SubNavbar({required this.currPage, required this.name, Key? key})
      : super(key: key);

  final String currPage;
  final String name;

  Widget getBioBar(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          margin: const EdgeInsets.all(8.0),
          child:
              Icon(Icons.account_circle, color: colorScheme.primary, size: 90)),
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(name,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: colorScheme.primary)),
        Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Text(
                "Here's more info about me. Here's more info about me...",
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
          Tab(text: 'Highlights', icon: Icon(Icons.hotel_class_sharp)),
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
