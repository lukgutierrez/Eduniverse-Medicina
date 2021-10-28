import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

tarjeta(imagen, texto, pagina) {
  return GestureDetector(
    onTap: pagina,
    child: Card(
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
                      imagen,
                      texto,
                    ],
                  )),
            ],
          ),
        )),
  );
}

libros(fotolibro, enlacelibro, enlacelibro2, fotolibro2) {
  return PageView(
    children: [
      GestureDetector(
        onTap: enlacelibro,
        child: FadeInImage(
          placeholder: AssetImage("assets/loading.gif"),
          image: fotolibro,
          width: 100,
          height: 200,
        ),
      ),
      GestureDetector(
        onTap: enlacelibro2,
        child: FadeInImage(
          placeholder: AssetImage("assets/loading.gif"),
          image: fotolibro2,
          width: 100,
          height: 200,
        ),
      ),
    ],
  );
}
clasesdelibros(listalibros,tituloclase){
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6F0303),
        title: tituloclase,
      ),
      body: Stack(
        children: [
          
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: listalibros,
                    ),
              ),
            ],
          )
        ],
      ),
    );
}