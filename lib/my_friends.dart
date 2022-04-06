import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/components/person_grid.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class MyFriendsPage extends StatelessWidget {
  const MyFriendsPage({
    Key? key,
  }) : super(key: key);

  Widget showFriendsList(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
          Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
              child: Text(
                "My Friends",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: colorScheme.onBackground),
                textAlign: TextAlign.left,
              )),
          const PersonGrid()
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Navbar(currPage: MY_FRIENDS_PAGE, person: FAKE_CURRENT_USER),
        body: showFriendsList(context),
      ),
    );
  }
}
