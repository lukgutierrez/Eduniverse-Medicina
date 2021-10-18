import 'package:flutter/material.dart';

class Contaner extends StatefulWidget {
  Contaner({Key? key}) : super(key: key);

  @override
  _ContanerState createState() => _ContanerState();
}

class _ContanerState extends State<Contaner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Container(
          height: 200,
          width: 300,
          color: Colors.amber,
          child: Stack(
            children: [Positioned(top: 40, left: 10, child: Nombre())],
          ),
        ),
      ]),
    ));
  }
}

class Nombre extends StatelessWidget {
  const Nombre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: ListTile(
        title: Text(
          "HOLA MAMA pepehng",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
