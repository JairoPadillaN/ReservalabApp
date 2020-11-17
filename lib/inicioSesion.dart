import 'package:flutter/material.dart';

class inicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Iniciar Sesión"),
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
