import 'package:flutter/material.dart';
import 'package:pantalla_inicio_menu_lateral/inicioSesion.dart';
import 'package:pantalla_inicio_menu_lateral/listaEstudios.dart';


class PantallaPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservalab',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ReservaLab',
            style: TextStyle(fontSize: 30),
          ),
        ),
        drawer:MenuLateral(),
        body: Column(
          children: [
            Image.network(
              'https://elmedicointeractivo.com/wp-content/uploads/2020/03/laboratorio.png',
              width: 600,
            ),
            Text(
              '¿Quienes somos?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Animacion(),
            Text(
              'Uso del cubrebocas',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Lavate las manos antes de colocartelo'),
            Text('Revisa cual es el lado correcto'),
            Text('Ajustalo a tu cara'),
            Text('Su uso no debe durar más de un día'),
            Text(''),
            Text(
              'Mas informacion acerca del Coronavirus',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class Animacion extends StatefulWidget {
  _Animacion createState() => _Animacion();
}

class _Animacion extends State<Animacion> {
  double opacityLevel = 0.0;
  Widget build(BuildContext build) {
    return Column(
      children: [
        TextButton(
            child: Text('Ver informacion'),
            onPressed: () => setState(() {
              opacityLevel = 1.0;
            })),
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 1),
          child: Text('''
              Somos una empresa que se preocupa por tu bienestar, 
              por eso nos ocupamos en diseñar esta plataforma para
              que puedas agendar tus citas en días seguros, para que
              no te expongas tu salud ni la de tu familia'
        '''),
        ),
        AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: opacityLevel,
          child: TextButton(
            child: Text('Ocultar informacion'),
            onPressed: () => setState(() {
              opacityLevel = 0.0;
            }),
          ),
        ),
      ],
    );
  }
}

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget> [
          new UserAccountsDrawerHeader(
            accountName: Text("Reservalab"),
            accountEmail: Text("www.reservalab.com.mx"),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("http://reservalab.com.mx/Imagenes/header.png"),
                  fit: BoxFit.cover, alignment: Alignment.centerLeft),
            ),
          ),
          Ink(
            color: Colors.lightBlue,
            child:new ListTile(
              title: Text("Iniciar Sesión", style: TextStyle(color: Colors.white),),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => inicioSesion()
                )
                );
              },
            ),
          ),
          Ink(
            color: Colors.lightBlue,
            child:new ListTile(
              title:Text("Lista de Estudios", style: TextStyle(color: Colors.white)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => listaEstudios()
                    )
                );
              },
            ),
          ),
          Ink(
            color: Colors.lightBlue,
            child:new ListTile(
              title: Text("Acerca de...", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}