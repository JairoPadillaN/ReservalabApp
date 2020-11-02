import 'package:flutter/material.dart';

class inicioSesion extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("Iniciar Sesión"),),
      body: Center(
        child: Text("Aqui ira el inicio de Sesión"),
      ),
    );
  }
}