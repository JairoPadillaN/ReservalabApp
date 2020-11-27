import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(flex: 1),
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
      body: Column(
        children: [
          Image.asset(
            'assets/img/laboratorio.png',
            width: 600,
          ),
          FormularioInicioSesion(),
        ],
      ),
    );
  }
}

class FormularioInicioSesion extends StatefulWidget {
  @override
  Formulario createState() {
    return Formulario();
  }
}

class Formulario extends State<FormularioInicioSesion> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('    Correo electronico', style: TextStyle(fontSize: 20)),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value.isEmpty) {
                return 'Ingresa tu correo electronico';
              }
            },
          ),
          Text(
            '   Contraseña',
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value.isEmpty) {
                return 'Ingresa tu contraseña';
              }
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Ingresando')));
                  }
                },
                child: Text('Ingresar',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
            child: Row(
              children: [
                Icon(FontAwesomeIcons.facebook),
                Text('          Inicia Sesion con Facebook'),
              ],
            ),
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
              image: NetworkImage('http://reservalab.com.mx/Imagenes/logo.png'),
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
