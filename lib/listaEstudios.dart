import 'package:flutter/material.dart';

class listaEstudios extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("Estudios"),),
      body: Center(
        child: Text("Aqui iran todos los estudios que ofreceremos"),
      ),
    );
  }
}