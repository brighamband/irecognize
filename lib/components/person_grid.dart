import 'package:flutter/material.dart';
import 'package:irecognize/person.dart';
import 'package:irecognize/utils/theme.dart';

class PersonGrid extends StatelessWidget {
  const PersonGrid({
    Key? key,
  }) : super(key: key);

  Widget getPicCard(BuildContext context, String name) {
    return GestureDetector(
        child: Card(
          child: GridTile(
            child: FittedBox(
                child: Icon(Icons.account_circle,
                    color: colorScheme.primary, size: 70)),
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: colorScheme.outline),
              borderRadius: BorderRadius.circular(10)),
          elevation: 0,
          margin: const EdgeInsets.all(4.0),
          // margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        ),
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
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: 20,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctx, index) {
            return getPicCard(context, "Bruce Lee $index");
          }),
    );
  }
}
