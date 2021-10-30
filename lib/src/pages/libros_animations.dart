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
                "https://drive.google.com/file/d/13u7WmPzZEHWzidxEGwgEn5eWUoj7JSSg/view";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          () async {
            const url =
                "https://drive.google.com/file/d/167JnamQ3dMjxa3ooAs-8M7k3rZyi2TLX/view";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634843810/BOOKS%20TEST/Ndovo_kfz135.png"),
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
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634843815/BOOKS%20TEST/Ndov90ooio_k95neg.png"),
          () async {
            const url =
                "https://drive.google.com/file/d/1taBCihDpFM98z7OaMSRVc13SaujEwGjm/view?usp=sharing";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          () async {
            const url =
                "https://drive.google.com/file/d/17GngBoPRexn2gfwjjpi0-dkEJ5puZ5h9/view";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          NetworkImage(
              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1635189231/BOOKS%20TEST/Ndov90ooio_r8x9sk.png"),
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
            "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634843809/BOOKS%20TEST/Novo_oricsl.png"),
        () async {
          const url =
              "https://drive.google.com/file/d/16gNPzpAsUjERKyYwTFEVGZjmz9RTpNyG/view";
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw "Could not launch $url";
          }
        },
        () async {
          const url =
              "https://drive.google.com/file/d/1FqqEH-QcC1FJW9gSPAArAnltrbgkGdRw/view?usp=sharing";
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw "Could not launch $url";
          }
        },
        NetworkImage(
            "https://res.cloudinary.com/lucianogutierrez/image/upload/v1634843815/BOOKS%20TEST/Ndov90oo_rccvo4.png"),
      ),
      Text("LIBROS DE QUIMÍCA"),
    );
  }
}
