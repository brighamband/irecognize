import 'package:flutter/material.dart';

class LocationCard extends StatefulWidget {
  const LocationCard({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

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
      ),
    );
  }
}
