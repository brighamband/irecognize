import 'package:flutter/material.dart';
import 'package:irecognize/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    Key? key,
    required this.location,
    required this.url,
    required this.date,
  }) : super(key: key);

  final String location;
  final String url;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Icon(Icons.location_pin, color: colorScheme.tertiary),
          title: Text(location),
          trailing: Text(date, style: TextStyle(color: colorScheme.primary)),
          onTap: () => _launchURL(url)),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(10.0)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
