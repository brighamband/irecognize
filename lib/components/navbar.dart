import 'package:flutter/material.dart';
import 'package:irecognize/components/sub_navbar.dart';
import 'package:irecognize/my_friends.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({
    Key? key,
    this.onBioPage = false,
    this.onOwnBio = false,
    this.currPage,
    this.name = '',
  }) : super(key: key);

  final bool onBioPage;
  final bool onOwnBio;
  final String? currPage;
  final String name;

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
        title: const Text('SEARCHBAR HERE...'),
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
            ? SubNavbar(currPage: currPage, name: name)
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

  // @override
  // Size get preferredSize {
  //   if (onBioPage) {
  //     if (!onOwnBio) {
  //       return const Size.fromHeight(
  //           kToolbarHeight + BIO_BAR_HEIGHT + MUTUAL_BAR_HEIGHT);
  //     }
  //     return const Size.fromHeight(kToolbarHeight + BIO_BAR_HEIGHT);
  //   }
  //   return const Size.fromHeight(kToolbarHeight);
  // }
}
