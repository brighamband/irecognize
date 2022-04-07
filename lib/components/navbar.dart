import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:irecognize/components/sub_navbar.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/my_friends_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({
    Key? key,
    this.onBioPage = false,
    this.onOwnBio = false,
    this.currPage,
    this.person,
  }) : super(key: key);

  final bool onBioPage;
  final bool onOwnBio;
  final String? currPage;
  final PersonModel? person;

  bool shouldShowSubNavbar() {
    if (currPage == PERSON_PAGE || currPage == MY_FRIENDS_PAGE) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.primary,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: colorScheme.surface),
        title: const Text('SEARCHBAR'),
        actions: currPage != MY_FRIENDS_PAGE
            ? [
                IconButton(
                  icon:
                      Icon(Icons.people_rounded, color: colorScheme.secondary),
                  iconSize: 40,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyFriendsPage()));
                  },
                )
              ]
            : null,
        bottom: shouldShowSubNavbar()
            ? SubNavbar(currPage: currPage, person: person!)
            : null);
  }

  @override
  Size get preferredSize {
    if (currPage == PERSON_PAGE) {
      return const Size.fromHeight(
          kToolbarHeight + BIO_BAR_HEIGHT + MUTUAL_BAR_HEIGHT);
    } else if (currPage == MY_FRIENDS_PAGE) {
      return const Size.fromHeight(kToolbarHeight + BIO_BAR_HEIGHT);
    }
    return const Size.fromHeight(kToolbarHeight);
  }
}
