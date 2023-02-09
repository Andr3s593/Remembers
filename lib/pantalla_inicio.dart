import 'dart:async';
import 'package:flutter/material.dart';
import 'pantalla_login.dart';
void main() {
  runApp(Pantalla_Inicio());
}

class Pantalla_Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pantalla_Inicio> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    //duration es para determinar el tiempo que demora en cargar la pantalla
    //route nos sirve para redireccionar despues del tiempo estipulado
    return new Timer(duration, route);
  }

  route() {
    //pushAbrirventanadeinicio
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PantallaLogin()));
  }

  @override
  //Se BuildContext define un texto
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 90, 49),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 206, 90, 49)),
                  Color.fromARGB(255, 206, 90, 49)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ////
                margin: EdgeInsets.only(right: 0, top: 0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Remembers",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                ///
          ),
          Center(
            child: Container(
              width: 300,
              height: 300,
              child: Image.asset("../images/logo.png.webp"),              
            ),
          
          )
        ],
      ),
    );
  }
}