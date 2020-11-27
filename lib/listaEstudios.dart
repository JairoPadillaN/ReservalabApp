import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ReservalabApp/inicioSesion.dart';
import 'listaEstudios.dart';

class listaEstudios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(flex: 1),
            // Iconos de la barra superior
            //Icono de busqueda que aun no busca
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => inicioSesion()));
              },
            ),
            //Boton de inicio de sesion
            IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => inicioSesion()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Aqui iran todos los estudios que ofreceremos"),
      ),
    );
  }
}
