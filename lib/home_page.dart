import 'package:eduniverse_medicina/src/home/home_books.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image(
          image: AssetImage(
            "assets/homepage.png",
          ),
          fit: BoxFit.cover,
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage("assets/logo.png")),
            ),
            Hero(
              tag:"boton",
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context).push(
                    MaterialPageRoute(builder: (context) => HomeBooks()),
                  );
                },
                child: Text(
                  'INICIO',
                  style: TextStyle(color: Color(0xff6F0303), fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(130, 50),
                    shape: StadiumBorder()),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
