import 'package:flutter/material.dart';
import 'package:irecognize/components/navbar.dart';
import 'package:irecognize/components/person/pic_name_card.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/person_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class GyroPage extends StatelessWidget {
  GyroPage({Key? key}) : super(key: key);

  final PersonModel testPersonFound = TREY_REYNOLDS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: Center(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(70),
            child: Image(
              image: AssetImage('assets/compass_icon.png'),
              height: 100,
              width: 100,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: PicNameCard(person: testPersonFound)

              // Row(
              //   children: [
              //     const Padding(padding: EdgeInsets.all(40)),
              //     const ClipRRect(
              //         borderRadius: BorderRadius.all(Radius.circular(35)),
              //         child: Image(
              //           image: AssetImage('assets/brad-pic.jpg'),
              //           height: 50,
              //           width: 50,
              //         )),
              //     const Padding(padding: EdgeInsets.all(20)),
              //     Text(personFound)
              //   ],
              // ),
              // )
              ),
          const Padding(padding: EdgeInsets.all(30)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PersonPage(person: testPersonFound)));
              },
              child: const Text("View Bio"),
              style: ElevatedButton.styleFrom(primary: colorScheme.tertiary))
        ],
      )),
    );
  }
}
