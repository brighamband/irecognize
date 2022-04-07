import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:irecognize/components/sub_navbar.dart';
import 'package:irecognize/home.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/my_friends.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

import 'package:irecognize/person.dart';

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
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        title: const Text("iRecognize"),
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

PersonModel? findByName(String name) {
  for (var person in FAKE_PEOPLE) {
    if (person.name == name) {
      return person;
    }
  }
  return null;
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
    var person = findByName(query);
    if (person == null) {
      return HomePage();
    }
    return new PersonPage(person: person);
    // // TODO: implement buildResults
    // throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<PersonModel> suggestions =
        FAKE_PEOPLE.where((element) => element.name.contains(query)).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index].name;
          return ListTile(
            onTap: () {
              query = suggestion;
              showResults(context);
            },
            title: Text(suggestion),
          );
        });
  }
}
