import 'package:flutter/material.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

import '../components/bars/navbar.dart';
import '../components/containers/person_grid.dart';

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
          PersonGrid(
            people: getMyFriends(),
            emptyMsg: 'No friends yet',
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Navbar(currPage: MY_FRIENDS_PAGE, person: CURRENT_USER),
        body: showFriendsList(context),
      ),
    );
  }
}
