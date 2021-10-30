import 'package:eduniverse_medicina/home_page.dart';
import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:eduniverse_medicina/src/home/home_investigaciones.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eduniverse Medicina',
      initialRoute: "HomePage",
      routes: {
        "HomeBooks": (BuildContext context) => HomeBooks(),
        "HomePage": (BuildContext context) => HomePage(),
        "HomeYoutube": (BuildContext context) => HomeYoutube(),
        "HomeInvestiga": (BuildContext context) => HomeInvestigaciones(),
      },
      theme: ThemeData(primaryColor: Color(0xff6F0303),),
    );
  }
}
