import 'package:flutter/material.dart';
import 'package:irecognize/models/about_model.dart';
import 'package:irecognize/utils/theme.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({Key? key, required this.about}) : super(key: key);

  final AboutModel about;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(about.title),
        subtitle: Text(about.info),
        trailing: about.isNew
            ? Icon(Icons.new_releases, color: colorScheme.tertiary)
            : null,
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10.0)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }
}
