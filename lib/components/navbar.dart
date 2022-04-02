import 'package:flutter/material.dart';
import 'package:irecognize/bio.dart';
import 'package:irecognize/utils/theme.dart';

class Navbar extends StatelessWidget with PreferredSizeWidget {
  const Navbar({
    Key? key,
    this.onOwnBio = false,
  }) : super(key: key);

  final bool onOwnBio;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.primary,
      title: const Text('ADD SEARCHBAR HERE...'),
      actions: !onOwnBio
          ? <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle, color: colorScheme.secondary),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const BioPage(onOwnBio: true, name: 'Brad Pitt')),
                  );
                },
              )
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
