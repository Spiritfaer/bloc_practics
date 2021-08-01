import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLoC Demo1',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: Theme.of(context).textTheme.copyWith(
            bodyText1: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
            bodyText2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
            subtitle1: TextStyle(
              fontSize: 12.0,
              fontStyle: FontStyle.italic,
            )),
      ),
      home: HomePage(),
    );
  }
}
