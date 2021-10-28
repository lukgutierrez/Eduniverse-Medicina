import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeInvestigaciones extends StatefulWidget {
  @override
  _HomeInvestigacionesState createState() => _HomeInvestigacionesState();
}

class _HomeInvestigacionesState extends State<HomeInvestigaciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        title: Text("INVESTIGACIÓNES",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text("Estamos Trabajando!")),
          ),
        ],
      ),
    );
  }
}
