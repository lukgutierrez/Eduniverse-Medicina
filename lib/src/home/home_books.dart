import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:eduniverse_medicina/src/home/home_investigaciones.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:eduniverse_medicina/src/home/subhome/home_cienciasbooks.dart';
import 'package:eduniverse_medicina/src/home/subhome/home_medicinabooks.dart';
import 'package:flutter/material.dart';

class HomeBooks extends StatefulWidget {
  @override
  _HomeBooksState createState() => _HomeBooksState();
}

class _HomeBooksState extends State<HomeBooks> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _patallaDistinta(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff6F0303),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/lupa.png"),
                  color: Colors.white,
                  size: 40,
                ),
                label: "BUSCAR"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/book2.png"),
                  color: Colors.white,
                  size: 40,
                ),
                label: "BIBLOTECA"),
            BottomNavigationBarItem(
                backgroundColor: Colors.amber,
                icon: ImageIcon(
                  AssetImage("assets/youtube.png"),
                  color: Colors.white,
                  size: 40,
                ),
                label: "BIBLOTECA")
          ]),
    );
  }
}

Widget _patallaDistinta(int paginaActual) {
  switch (paginaActual) {
    case 0:
      return HomeInvestigaciones();
    case 1:
      return Libros();
    case 2:
      return HomeYoutube();

    default:
      return Libros();
  }
}

class Libros extends StatefulWidget {
  Libros({Key? key}) : super(key: key);

  @override
  _LibrosState createState() => _LibrosState();
}

class _LibrosState extends State<Libros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 1,
        title:
            Text("LIBROS", style: TextStyle(fontSize: 40, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          tarjeta(
            Image(image: AssetImage("assets/matematicas.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "INGRESO A MEDICINA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeCienciaBooks()),
              );
            },
          ),
          tarjeta(
            Image(image: AssetImage("assets/basico2.jpg")),
            ListTile(
              title: Center(
                  child: Text(
                "MEDICINA",
                style: TextStyle(color: Colors.white),
              )),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeMedicinaBooks()),
              );
            },
          ),
        ],
      ),
    );
  }
}
