import 'package:flutter/material.dart';
import 'package:irecognize/bio.dart';
import 'package:irecognize/components/bio_sub_bar.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({
    Key? key,
    this.onBioPage = false,
    this.onOwnBio = false,
  }) : super(key: key);

  final bool onBioPage;
  final bool onOwnBio;

  final double fullSizeWithBio = 4.5 * kToolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.primary,
        title: const Text('SEARCHBAR HERE...'),
        actions: !onOwnBio
            ? [
                IconButton(
                  icon:
                      Icon(Icons.account_circle, color: colorScheme.secondary),
                  iconSize: 40,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BioPage(
                              onOwnBio: true, name: CURRENT_USER_NAME)),
                    );
                  },
                )
              ]
            : null,
        bottom: onBioPage
            ? BioSubBar(name: "Bob Marley", onOwnBio: onOwnBio)
            : null);
  }

  @override
  Size get preferredSize {
    if (onBioPage) {
      if (!onOwnBio) {
        return const Size.fromHeight(
            kToolbarHeight + BIO_BAR_HEIGHT + MUTUAL_BAR_HEIGHT);
      }
      return const Size.fromHeight(kToolbarHeight + BIO_BAR_HEIGHT);
    }
    return const Size.fromHeight(kToolbarHeight);
  }
}
