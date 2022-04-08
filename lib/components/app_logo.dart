import 'package:flutter/material.dart';
import 'package:irecognize/utils/theme.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.left,
        text: TextSpan(children: [
          TextSpan(
              text: 'i',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: colorScheme.tertiary, fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'Recognize',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: colorScheme.primary, fontWeight: FontWeight.w600))
        ]));
  }
}
