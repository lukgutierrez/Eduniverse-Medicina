import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:eduniverse_medicina/src/pages/libros_animations.dart';
import 'package:flutter/material.dart';

class HomeCienciaBooks extends StatefulWidget {
  @override
  _HomeCienciaBooksState createState() => _HomeCienciaBooksState();
}

class _HomeCienciaBooksState extends State<HomeCienciaBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 25,
        title: Text("INGRESO A MEDICINA",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          tarjeta(
            Image(image: AssetImage("assets/basico.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE MATEMÁTICAS",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibrosMatematica()),
              );
            },
          ),
          tarjeta(
            Image(image: AssetImage("assets/fisica.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE FISÍCA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibrosFisica()),
              );
            },
          ),
          tarjeta(
            Image(image: AssetImage("assets/quimica.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE QUIMÍCA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibrosQuimica()),
              );
            },
          ),
        ],
      ),
    );
  }
}
