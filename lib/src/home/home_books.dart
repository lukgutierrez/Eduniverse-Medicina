import 'package:eduniverse_medicina/src/home/container.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBooks extends StatefulWidget {
  @override
  _HomeBooksState createState() => _HomeBooksState();
}

class _HomeBooksState extends State<HomeBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        title:
            Text("LIBROS", style: TextStyle(fontSize: 40, color: Colors.white)),
        backgroundColor: Color(0xff6F0303),
      ),
      body: ListView(
        children: [
          luciano(),
          luciano()
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xff6F0303),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch(
                    'https://www.facebook.com/Cerros-de-Terciopelo-334517869986612/?ref=page_internal'),
                icon: ImageIcon(
                  AssetImage("assets/lupa.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch(
                    'https://api.whatsapp.com/send?phone=541160355956&app=facebook&entry_point=page_cta'),
                icon: ImageIcon(
                  AssetImage("assets/book2.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Whatsapp',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () =>
                    launch('https://www.instagram.com/cerrosdeterciopelo'),
                icon: ImageIcon(
                  AssetImage("assets/youtube.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Instagram',
          ),
        ],
      ),
    );
  }
}
