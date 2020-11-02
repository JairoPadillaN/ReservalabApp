import 'package:flutter/material.dart';
import 'package:pantalla_inicio_menu_lateral/pantallaInicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservalab',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PantallaInicio(),

    );
  }
}
