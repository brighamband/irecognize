import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:irecognize/components/sub_navbar.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/my_friends_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

import '../pages/home_page.dart';
import '../pages/person_page.dart';

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
                    onPressed: () {
                      showSearch(context: context, delegate: MySearchDelagte());
                    },
                    icon: Icon(
                      Icons.search,
                      color: colorScheme.secondary,
                    )),
                IconButton(
                  icon:
                      Icon(Icons.people_rounded, color: colorScheme.secondary),
                  iconSize: 40,
                  onPressed: () {
                    goToPage(context, const MyFriendsPage());
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

class MySearchDelagte extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<PersonModel> suggestedPeople = searchByPerson(query);

    return ListView.builder(
        itemCount: suggestedPeople.length,
        itemBuilder: (context, index) {
          final suggestedPerson = suggestedPeople[index];
          return ListTile(
            onTap: () {
              query = suggestedPerson.name;
              goToPage(context, PersonPage(person: suggestedPerson));
            },
            title: Text(suggestedPerson.name),
          );
        });
  }
}
