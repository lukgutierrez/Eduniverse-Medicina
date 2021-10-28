import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:eduniverse_medicina/src/home/home_investigaciones.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:eduniverse_medicina/src/pages/libros_animations.dart';
import 'package:eduniverse_medicina/src/pages/libros_medicina.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMedicinaBooks extends StatefulWidget {
  @override
  _HomeMedicinaBooksState createState() => _HomeMedicinaBooksState();
}

class _HomeMedicinaBooksState extends State<HomeMedicinaBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 25,
        title: Text("MEDICÍNA",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          tarjeta(
            Image(image: AssetImage("assets/anatomia.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE ANATOMÍA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibrosAnatomia()),
              );
            },
          ),
          tarjeta(
            Image(image: AssetImage("assets/biologia.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE BIOLOGÍA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibrosBiologia()),
              );
            },
          ),
          tarjeta(
            Image(image: AssetImage("assets/bioquimica.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE BIOQUIMÍCA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibrosBioquimica()),
              );
            },
          ),
        ],
      ),
    );
  }
}
