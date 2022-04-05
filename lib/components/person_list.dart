import 'package:flutter/material.dart';
import 'package:irecognize/components/profile_pic.dart';
import 'package:irecognize/person.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class PersonList extends StatelessWidget {
  const PersonList({
    Key? key,
  }) : super(key: key);

  Widget getPicWithNameCard(BuildContext context, String name) {
    return Card(
      child: ListTile(
          leading: const ProfilePic(
            small: true,
            imageUrl: TEST_USER_IMG,
          ),
          title: Text(name),
          onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonPage(name: name)))
              }),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10.0)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return getPicWithNameCard(context, "John Doe $index");
        });
  }
}
