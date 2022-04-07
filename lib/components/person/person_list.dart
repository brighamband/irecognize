import 'package:flutter/material.dart';
import 'package:irecognize/components/empty_state_text.dart';
import 'package:irecognize/components/person/pic_name_card.dart';
import 'package:irecognize/models/person_model.dart';

class PersonList extends StatelessWidget {
  const PersonList({Key? key, required this.people, required this.emptyMsg})
      : super(key: key);

  final List<PersonModel> people;
  final String emptyMsg;

  @override
  Widget build(BuildContext context) {
    return people.isNotEmpty
        ? ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: people.length,
            itemBuilder: (BuildContext context, int index) {
              return PicNameCard(person: people[index]);
            })
        : EmptyStateText(text: emptyMsg);
  }
}
