import 'package:flutter/material.dart';
import 'package:irecognize/components/profile_pic.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/person.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class PersonGrid extends StatelessWidget {
  const PersonGrid({Key? key, this.size = 20}) : super(key: key);

  final int size;

  // Widget getPicCard(BuildContext context, String name, int index) {
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
          shape: RoundedRectangleBorder(
              side: BorderSide(color: colorScheme.outline),
              borderRadius: BorderRadius.circular(CIRCLE_BORDER_RADIUS)),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemCount: FAKE_PEOPLE.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctx, index) {
            // return getPicCard(context, "Bruce Lee $index", index);
            return getPicCard(context, FAKE_PEOPLE[index]);
          }),
    );
  }
}
