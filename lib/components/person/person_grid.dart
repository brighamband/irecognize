import 'package:flutter/material.dart';
import 'package:irecognize/components/empty_state_text.dart';
import 'package:irecognize/components/person/profile_pic.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/person_page.dart';
import 'package:irecognize/utils/theme.dart';

class PersonGrid extends StatelessWidget {
  const PersonGrid({Key? key, required this.people, required this.emptyMsg})
      : super(key: key);

  final List<PersonModel> people;
  final String emptyMsg;

  Widget getPicCard(BuildContext context, PersonModel person) {
    return GestureDetector(
        child: (Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
                child: ProfilePic(
              imageUrl: person.imageUrl,
            )),
          ),
          shape: CircleBorder(side: BorderSide(color: colorScheme.outline)),
          elevation: 0,
        )),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PersonPage(person: person)));
        });
  }

  @override
  Widget build(BuildContext context) {
    return people.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: people.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  return getPicCard(context, people[index]);
                }),
          )
        : EmptyStateText(text: emptyMsg);
  }
}
