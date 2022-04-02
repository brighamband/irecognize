import 'package:flutter/material.dart';

class BioPage extends StatelessWidget {
  const BioPage({
    Key? key,
    required this.isMine,
    required this.name,
  }) : super(key: key);

  final bool isMine;
  final String name;

  Widget getTabBar(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      // color: Colors.white,
      child: const TabBar(
        tabs: [
          Tab(text: 'Highlights', icon: Icon(Icons.hotel_class_sharp)),
          Tab(text: 'Places', icon: Icon(Icons.location_on)),
          Tab(text: 'Friends', icon: Icon(Icons.people_alt_sharp)),
          Tab(text: 'Chats', icon: Icon(Icons.record_voice_over_sharp))
        ],
        labelColor: Colors.white,
        indicatorColor: Colors.redAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('iRecognize | Bio Page'),
          actions: !isMine
              ? <Widget>[
                  IconButton(
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BioPage(isMine: true, name: 'Brad Pitt')),
                      );
                    },
                  )
                ]
              : null,
        ),
        body: Column(children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
                // CircleAvatar(backgroundImage: Icon(Icons.abc)),
                Column(children: <Widget>[
                  Text(name),
                  const Text("Here's more info about me")
                ]),
              ]),
          const Text('Our Commonalities'),
          DefaultTabController(length: 4, child: getTabBar(context))
        ]));
  }
}
