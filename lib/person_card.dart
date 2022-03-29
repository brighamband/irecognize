import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(widget.name))
    );
  }
}
