import 'package:flutter/material.dart';
import 'package:irecognize/components/person/pic_name_card.dart';
import 'package:irecognize/components/person/profile_pic.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/person.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class PersonList extends StatelessWidget {
  const PersonList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PicNameCard(person: FAKE_PEOPLE[index]);
        });
  }
}
