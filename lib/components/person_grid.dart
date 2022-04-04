import 'package:flutter/material.dart';
import 'package:irecognize/components/profile_pic.dart';
import 'package:irecognize/person.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class PersonGrid extends StatelessWidget {
  const PersonGrid({Key? key, this.size = 20}) : super(key: key);

  final int size;

  Widget getPicCard(BuildContext context, String name, int index) {
    return GestureDetector(
        child: (Card(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: GridTile(
                child: ProfilePic(
              imageUrl: TEST_USER_IMG,
            )),
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: colorScheme.outline),
              borderRadius: BorderRadius.circular(CIRCLE_BORDER_RADIUS)),
          elevation: 0,
        )),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PersonPage(name: name)));
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
          itemCount: size,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctx, index) {
            return getPicCard(context, "Bruce Lee $index", index);
          }),
    );
  }
}
