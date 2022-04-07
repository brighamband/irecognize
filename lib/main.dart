import 'package:flutter/material.dart';
import 'package:irecognize/pages/home_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: ThemeData(scaffoldBackgroundColor: colorScheme.background),
      home: const HomePage(),
    );
  }
}
