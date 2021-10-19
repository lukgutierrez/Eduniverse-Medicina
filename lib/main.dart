import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xff6F0303)),
      title: 'Libros de Medicina Gratis',
      initialRoute: "/",
      routes: {"/": (BuildContext context) => HomeBooks()},
    );
  }
}
