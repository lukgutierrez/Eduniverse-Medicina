import 'package:eduniverse_medicina/src/class_funtions/function_tarjetas.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LibrosMatematica extends StatefulWidget {
  @override
  _LibrosMatematicaState createState() => _LibrosMatematicaState();
}

class _LibrosMatematicaState extends State<LibrosMatematica> {
  @override
  Widget build(BuildContext context) {
    return clasesdelibros(
        libros(
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634756675/BOOKS%20TEST/prueba_l60jdc.png"),
          () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634756675/BOOKS%20TEST/prueba_l60jdc.png"),
        ),
        Text("LIBROS DE MATEMATÍCAS"));
  }
}

class LibrosFisica extends StatefulWidget {
  @override
  _LibrosFisicaState createState() => _LibrosFisicaState();
}

class _LibrosFisicaState extends State<LibrosFisica> {
  @override
  Widget build(BuildContext context) {
    return clasesdelibros(
        libros(
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634756675/BOOKS%20TEST/prueba_l60jdc.png"),
          () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634756675/BOOKS%20TEST/prueba_l60jdc.png"),
        ),
        Text("LIBROS DE FISÍCA"));
  }
}

class LibrosQuimica extends StatefulWidget {
  @override
  _LibrosQuimicaState createState() => _LibrosQuimicaState();
}

class _LibrosQuimicaState extends State<LibrosQuimica> {
  @override
  Widget build(BuildContext context) {
    return clasesdelibros(
        libros(
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634756675/BOOKS%20TEST/prueba_l60jdc.png"),
          () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          () async {
            const url =
                "https://drive.google.com/file/d/1lB0hTuDuDUmWaJYS2TlQxtmwSkhWnfcI/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634756675/BOOKS%20TEST/prueba_l60jdc.png"),
        ),
        Text("LIBROS DE QUIMÍCA"));
  }
}
