import 'package:flutter/material.dart';
import 'package:ReservalabApp/inicioSesion.dart';

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
      //Ejemplo de la lista de estudios
      body: Center(
        child: ListView(
          children: [
            Image.network(
                "https://emc.mty.itesm.mx/wp-content/uploads/2016/01/laboratorio-clinico-emc-ocd-diplomado.jpg"),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.add_circle_outline, size: 20),
                        Text('Nombre del estudio'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('      Precio', textAlign: TextAlign.left),
                        Spacer(flex: 1),
                        TextButton(
                          onPressed: () {},
                          child: Text('Agendar',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
