import 'package:flutter/material.dart';
import 'package:irecognize/bio.dart';
import 'package:irecognize/utils/theme.dart';

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
          builder: (context) => BioPage(onOwnBio: false, name: widget.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            Icon(Icons.account_circle, color: colorScheme.primary, size: 40),
        title: Text(widget.name),
        onTap: () => goToBioPage(),
      ),
    );
  }
}
