import 'package:flutter/material.dart';
import 'package:irecognize/bio.dart';

class PersonCard extends StatefulWidget {
  const PersonCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  State<StatefulWidget> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  void goToBioPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => BioPage(isMine: false, name: widget.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.account_circle),
        title: Text(widget.name),
        onTap: () => goToBioPage(),
      ),
    );
  }
}
