import 'package:flutter/material.dart';
import 'package:irecognize/components/profile_pic.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/person_page.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';

class PicNameCard extends StatelessWidget {
  const PicNameCard({Key? key, required this.person}) : super(key: key);

  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: ProfilePic(
            small: true,
            imageUrl: person.imageUrl,
          ),
          title: Text(person.name),
          onTap: () => {goToPage(context, PersonPage(person: person))}),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10.0)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }
}
