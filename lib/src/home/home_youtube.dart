import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
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
        automaticallyImplyLeading: false,
        centerTitle: false,
        leadingWidth: 25,
        title: Text("CANALES DE YOUTUBE",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          tarjeta(
              FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage(
                      "https://res.cloudinary.com/lucianogutierrez/image/upload/v1635298765/BOOKS%20TEST/medicina_brocmv.jpg")),
              ListTile(
                title: Center(
                    child: Text(
                  "Dr.Veller",
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  "VER CANAL",
                  style: TextStyle(color: Colors.white),
                )),
              ), () async {
            const url = 'https://www.youtube.com/c/DrVeller/featured';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }),
          tarjeta(
              FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage(
                      "https://res.cloudinary.com/lucianogutierrez/image/upload/v1635300523/BOOKS%20TEST/medicinas_hwtnhq.jpg")),
              ListTile(
                title: Center(
                    child: Text(
                  "Medicina Clara",
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  "VER CANAL",
                  style: TextStyle(color: Colors.white),
                )),
              ), () async {
            const url = 'https://www.youtube.com/user/medicinaclara';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }),
          tarjeta(
              FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage(
                      "https://res.cloudinary.com/lucianogutierrez/image/upload/v1635300730/BOOKS%20TEST/medicinas_zwqn9q.jpg")),
              ListTile(
                title: Center(
                    child: Text(
                  "David Vargas",
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  "VER CANAL",
                  style: TextStyle(color: Colors.white),
                )),
              ), () async {
            const url =
                'https://www.youtube.com/channel/UCAFYoiJjNLKjevu6mUC3_Ag';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }),
          tarjeta(
              FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage(
                      "https://res.cloudinary.com/lucianogutierrez/image/upload/v1635301275/BOOKS%20TEST/medicinasdsf_pbucsy.jpg")),
              ListTile(
                title: Center(
                    child: Text(
                  "Nucleus Health Videos",
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  "VER CANAL",
                  style: TextStyle(color: Colors.white),
                )),
              ), () async {
            const url = 'https://www.youtube.com/user/nucleushealthvideose';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }),
          tarjeta(
              FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage(
                      "https://res.cloudinary.com/lucianogutierrez/image/upload/v1635301987/BOOKS%20TEST/medicinasddsffsfsf_d8dc6f.jpg")),
              ListTile(
                title: Center(
                    child: Text(
                  "Alberto Sanagustin",
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  "VER CANAL",
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
    );
  }
}
