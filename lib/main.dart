import 'package:flutter/material.dart';
import 'package:irecognize/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const String appTitle = "iRecognize";
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xF7F7F7F7),
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Color.fromARGB(247, 110, 52, 52),
        //   color: Color.fromARGB(247, 26, 19, 19),
        // )
      ),
      home: const HomePage(),
    );
  }
}