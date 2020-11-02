import 'package:flutter/material.dart';
import 'package:pantalla_inicio_menu_lateral/pantallaPrincipal.dart';

class PantallaInicio extends StatefulWidget {

    @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {

    @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
          child:Stack(
            children: <Widget>[
              Positioned(
                  child:Align(
                   alignment: FractionalOffset.bottomRight,
                    child: Container(
                      padding: EdgeInsets.only(
                        right: 15, left: 5, top: 50, bottom: 50,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200)
                        ),
                      ),
                      child: RotatedBox(
                        quarterTurns:3,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("TÚ GESTOR DE CITAS WEB",style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                  ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset("assets/img/ic_logo.png",
                      width: MediaQuery.of(context).size.width/2,
                      height: 250 ,
                    ),
                  ),
                  Padding(
                   padding: EdgeInsets.only(top: 100),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(13.0),
                    color: Colors.cyan,
                    child: Icon(
                      Icons.chevron_right,
                      color:Colors.white ,
                    ),
                    onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:(BuildContext context) => PantallaPrincipal()
                      )
                    );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

}

