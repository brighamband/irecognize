import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationCard extends StatefulWidget {
  const LocationCard({
    Key? key,
    required this.location,
    required this.url,
  }) : super(key: key);

  final String location;
  final String url;

  @override
  State<StatefulWidget> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const Icon(Icons.location_pin, color: Colors.pink),
          title: Text(widget.location),
          onTap: () => _launchURL(widget.url)),
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
