import 'package:flutter/material.dart';
import 'package:proyecto_ricardopiedra/pages/listar.dart';
import 'pantalla_registro.dart';

class PantallaLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<PantallaLogin> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
            color: Color.fromARGB(255, 216, 80, 39),
            gradient: LinearGradient(
              colors: [
                (Color.fromARGB(255, 216, 80, 39)),
                Color.fromARGB(255, 216, 80, 39)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "../images/logo.png.webp",
                  height: 90,
                  width: 90,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Login Remembers",                  
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  
                ),
              )
            ],
          )),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            cursorColor: Color.fromARGB(255, 206, 90, 49),
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 206, 90, 49),
              ),
              hintText: "Enter Email",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffEEEEEE),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 100,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            cursorColor: Color.fromARGB(255, 206, 90, 49),
            decoration: InputDecoration(
              focusColor: Color.fromARGB(255, 206, 90, 49),
              icon: Icon(
                Icons.vpn_key,
                color: Color.fromARGB(255, 206, 90, 49),
              ),
              hintText: "Enter Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: Text("Olvido la Contraseña?"),
          ),
        ),
        GestureDetector(
            //  onTap: () {
            // Write Click Listener Code Here.
            // },
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              (Color.fromARGB(255, 206, 90, 49)),
              Color.fromARGB(255, 206, 90, 49)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: GestureDetector(
              child: const Text(
                "LOGIN 1",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Write Tap Code Here.
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonList(),
                    ));
              }),
        )),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No tengo ninguna cuenta?  "),
              GestureDetector(
                child: Text(
                  "Registrarse Ahora",
                  style: TextStyle(color: Color.fromARGB(255, 206, 90, 49)),
                ),
                onTap: () {
                  // Write Tap Code Here.
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pantalla_Registro(),
                      ));
                },
              )
            ],
          ),
        )
      ],
    )));
  }
}


