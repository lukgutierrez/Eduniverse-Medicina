import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:eduniverse_medicina/src/home/home_investigaciones.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:eduniverse_medicina/src/pages/libros_animations.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        leadingWidth: 0,
        title: Text("CIENCÍAS",
            style: TextStyle(fontSize: 40, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          tarjeta(
            Image(image: AssetImage("assets/basico.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "LIBROS DE MATEMATÍCAS",
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
      bottomNavigationBar: new BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xff6F0303),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeInvestigaciones()),
                  );
                },
                icon: ImageIcon(
                  AssetImage("assets/lupa.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Investigaciones',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeBooks()),
                  );
                },
                icon: ImageIcon(
                  AssetImage("assets/book2.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeYoutube()),
                  );
                },
                icon: ImageIcon(
                  AssetImage("assets/youtube.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Youtube',
          ),
        ],
      ),
    );
  }
}
