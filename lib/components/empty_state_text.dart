import 'package:flutter/material.dart';

class EmptyStateText extends StatelessWidget {
  const EmptyStateText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(padding: const EdgeInsets.all(15.0), child: Text(text)));
  }
}
