import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        'Crea tu cuenta aqui',
        textAlign: TextAlign.right,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    Widget createLoginButton() {
      return Container(
          padding: const EdgeInsets.only(top: 32),
          child: RaisedButton(
            child: Text('Entrar'),
            onPressed: () {},
          ));
    }

    Widget createfbButton() {
      return Container(
          padding: const EdgeInsets.only(top: 32),
          child: RaisedButton(
            child: Row(children: [Icon(FontAwesomeIcons.facebook),Text('          Inicia Sesion con Facebook'),],),
            onPressed: () {},
          ));
    }

    Widget createdivisor() {
      return Container(
        padding: const EdgeInsets.only(top: 32),
        child: Row(
          children: [
            Expanded(child: Divider(height: 1)),
            Text('O'),
            Expanded(child: Divider(height: 1)),
          ],
        ),
      );
    }

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Tu Gestor de Citas Web',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'InicioSesion',
      theme: ThemeData(
          buttonTheme: ButtonThemeData(
        height: 32,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text('InicioSesion'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
            Image(
              image: NetworkImage(
                  'http://reservalab.com.mx/Imagenes/logo.png'),
              width: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '  Usuario o Correo electronico')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: TextFormField(
                  decoration: InputDecoration(hintText: '  Contraseña')),
            ),
            createLoginButton(),
            titleSection,
            createdivisor(),
            createfbButton(),
            textSection,
          ],
        ),
      ),
    );
  }
}
