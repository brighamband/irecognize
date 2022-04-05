import 'package:flutter/material.dart';

class HighlightsCard extends StatefulWidget {
  const HighlightsCard({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  final String title;
  final String info;

  @override
  State<StatefulWidget> createState() => _HighlightsCardState();
}

class _HighlightsCardState extends State<HighlightsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text(widget.info),
      ),
    );
  }
}
