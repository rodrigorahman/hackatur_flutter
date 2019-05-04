import 'package:cvcandgo/pages/FirstAccess.dart';
import 'package:cvcandgo/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(CvcAndGo());

class CvcAndGo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CVCnGo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color.fromRGBO(80, 47, 160, 1)
          ),
          primarySwatch: Colors.purple),
        home: Scaffold(body: FirstAccess()));
  }
}
