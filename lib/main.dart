import 'package:cvcandgo/pages/FirstAccess.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(CvcAndGo());
}

class CvcAndGo extends StatefulWidget {
  @override
  _CvcAndGoState createState() => _CvcAndGoState();
}

class _CvcAndGoState extends State<CvcAndGo> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CVCnGo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: Color.fromRGBO(80, 47, 160, 1)),
            primarySwatch: Colors.purple),
        home: Scaffold(body: FirstAccess()));
  }

  @override
  void initState() {
    super.initState();
//    firebaseCloudMessaging_Listeners();
  }
}
