import 'package:admob_flutter/admob_flutter.dart';
import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:eduniverse_medicina/src/home/home_youtube.dart';
import 'package:eduniverse_medicina/src/home/subhome/home_cienciasbooks.dart';
import 'package:eduniverse_medicina/src/home/subhome/home_medicinabooks.dart';
import 'package:flutter/material.dart';

class HomeBooks extends StatefulWidget {
  @override
  _HomeBooksState createState() => _HomeBooksState();
}

class _HomeBooksState extends State<HomeBooks> {
  @override
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _patallaDistinta(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Color(0xff6F0303),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
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
                label: "YOUTUBE")
          ]),
    );
  }
}

Widget _patallaDistinta(int paginaActual) {
  switch (paginaActual) {
    case 0:
      return Libros();
    case 1:
      return HomeYoutube();
    default:
      return Libros();
  }
}

class Libros extends StatefulWidget {
  @override
  _LibrosState createState() => _LibrosState();
}

class _LibrosState extends State<Libros> {
  late AdmobInterstitial interstitialAd;
  @override
  void initState() {
    super.initState();
    interstitialAd = AdmobInterstitial(
        adUnitId: "ca-app-pub-3940256099942544/1033173712",
        listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
          if (event == AdmobAdEvent.closed) {
            interstitialAd.load();
          }
        });

    interstitialAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //QuitaFlecha
        centerTitle: false,
        leadingWidth: 25,
        title:
            Text("LIBROS", style: TextStyle(fontSize: 30, color: Colors.white)),
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
            () async {
              if (await interstitialAd.isLoaded == null) {
                interstitialAd.show();
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeCienciaBooks()),
                );
              }
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
