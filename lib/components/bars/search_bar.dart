import 'package:flutter/material.dart';
import 'package:irecognize/utils/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: 'Type in name of friend ...',
            hintStyle: TextStyle(
              color: colorScheme.surface,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            )));
  }
}
