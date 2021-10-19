import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimacionesLibros extends StatefulWidget {
  @override
  _AnimacionesLibrosState createState() => _AnimacionesLibrosState();
}

class _AnimacionesLibrosState extends State<AnimacionesLibros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: AssetImage("assets/fondo.png"),
            fit: BoxFit.fill,
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + kToolbarHeight,
                  left: 20,
                ),
                child: Text("Libros", style: TextStyle(fontSize: 39)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: PageViewWidget(),
                ),
              ),
              //Text("HOLA LUCIANO",style: TextStyle(fontSize: 50)),
            ],
          )
        ],
      ),
    );
  }
}

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        GestureDetector(
          onTap: () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          child: Container(
            child: Image.asset("assets/libro1.png"),
            width: 100,
            height: 200,
          ),
        ),
        Container(
          child: Image(image: AssetImage("assets/libro2.png")),
        ),
        Container(
          child: Image(image: AssetImage("assets/libro3.png")),
        )
      ],
    );
  }
}
