import 'package:flutter/material.dart';

Widget luciano() => Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    margin: EdgeInsets.all(20),
    elevation: 10,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Column(
        children: <Widget>[
          Container(
              color: Color(0xff6F0303),
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/basico.jpg"),
                  ),
                  ListTile(
                    title: Center(
                        child: Text(
                      "LIBROS DE CIENCIAS EXACTAS",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              )),
        ],
      ),
    ));
