import 'package:flutter/material.dart';

class BioPage extends StatelessWidget {
  const BioPage({
    Key? key,
    required this.isMine,
    required this.name,
  }) : super(key: key);

  final bool isMine;
  final String name;

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
        body: Center(
          child: isMine
              ? Text("My name is $name")
              : Text(
                  "Their name is $name",
                ),
        ));
  }
}
