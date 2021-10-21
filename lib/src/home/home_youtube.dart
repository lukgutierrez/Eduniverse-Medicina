import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:eduniverse_medicina/src/home/home_investigaciones.dart';
import 'package:eduniverse_medicina/src/home/subhome/home_medicinabooks.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeYoutube extends StatefulWidget {
  @override
  _HomeYoutubeState createState() => _HomeYoutubeState();
}

class _HomeYoutubeState extends State<HomeYoutube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        title: Text("YOUTUBE",
            style: TextStyle(fontSize: 40, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          tarjeta(
              Image(image: AssetImage("assets/youtube1.png")),
              ListTile(
                title: Center(
                    child: Text(
                  "Alberto Sanagustin",
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  "558.000 suscriptores",
                  style: TextStyle(color: Colors.white),
                )),
              ), () async {
            const url =
                'https://www.youtube.com/channel/UC9ohLcxGUDGVIp69s26swuw';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }),
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
