import 'package:admob_flutter/admob_flutter.dart';
import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:eduniverse_medicina/src/home/home_investigaciones.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eduniverse Medicina',
      initialRoute: "HomeBooks",
      routes: {
        "HomeBooks": (BuildContext context) => HomeBooks(),
        "HomeYoutube": (BuildContext context) => HomeYoutube(),
        "HomeInvestiga": (BuildContext context) => HomeInvestigaciones(),
      },
      theme: ThemeData(
        primaryColor: Color(0xff6F0303),
      ),
    );
  }
}
