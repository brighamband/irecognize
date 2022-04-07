import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
        decoration: InputDecoration(
            hintText: 'type in friend name...',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            )));
  }
}
