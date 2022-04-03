import 'package:flutter/material.dart';
import 'package:irecognize/utils/theme.dart';

class BioSubBar extends StatelessWidget implements PreferredSizeWidget {
  const BioSubBar({required this.name, required this.onOwnBio, Key? key})
      : super(key: key);

  final String name;
  final bool onOwnBio;

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

  Widget onlyShowBio(BuildContext context) {
    return Column(children: [getBioBar(context)]);
  }

  Widget showBothBioAndMutual(BuildContext context) {
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
    return onOwnBio ? onlyShowBio(context) : showBothBioAndMutual(context);
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(1.0); // This isn't needed, defined in Navbar
}
