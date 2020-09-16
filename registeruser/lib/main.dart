import 'dart:ui';

import 'package:flutter/material.dart';
import './lib/CustomInputField.dart';

void main() {
  runApp(MiApp());

}

class MiApp extends StatelessWidget {
    const MiApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Register User",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo(){
  //BuildContext context;
    return Container(
      decoration: BoxDecoration (
        image: DecorationImage(
          image: AssetImage('assets/restaurants_unico.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            Column(
              children: <Widget>[
                Align(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 25.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            1.0,
                            15.0
                          )
                        )
                      ]
                      /*boxShadow: BoxShadow(
                        color: Colors.green,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 10.0
                      )*/
                    ),
                    margin: const EdgeInsets.all(20.0),
                    height: 420,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        textHeader(),
                        userPlace(),
                        /*campoUsuario(),
                        usuario1(),
                        botonAdelante(),*/
                      ]
                    ),
                  )
                )
              ]
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              botonIniciarSesion(),
              botonRegistrarse(),
              ],
            )
          ],
        ),
      ),
    );
}

Widget nombre(){
  return Container(
    margin: const EdgeInsets.all(20.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Registro", 
            textAlign: TextAlign.left,
            style: TextStyle(fontFamily: 'OpenSans', color: Colors.white, fontSize: 35),
            //color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold
          )
        ],
      ),
    ),
  );
}


Widget textHeader(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      new Text(
        "Dejanos Conocerte",
        style: const TextStyle(
          fontSize: 30.0,
          color: Colors.purple,
          fontWeight: FontWeight.w500
        ),
      ),
      Center(
        child: Container(
          height: 80,
          width: 250,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              new Text(
                "Dejanos tenerte en nuestros contactos",
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  botonGmail(),
                  botonFacebook(),
                ],
              ),
              new Text(
                "Tenemos multiples opciones para que puedas unirte",
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 10.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );

}

/*Widget contenedor2(){
  return Center(
    child: AnimatedContainer(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black26,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    curve: Curves.fastOutSlowIn, duration: null,
  ),
  );
}*/

/*Widget usuario1(){
  return Column(
    children: <Widget>[
    CustomInputField(
        Icon(Icons.person, color: Colors.purple), 'Usuario'),
    CustomInputField(
        Icon(Icons.lock, color: Colors.purple), 'Contraseña'),
    CustomInputField(
        Icon(Icons.email, color: Colors.purple), 'Correo Electronico'),
    CustomInputField(
        Icon(Icons.phone, color: Colors.purple), 'Telefono'),
        ]
        );
}*/


Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget userPlace(){
  return Container(
    width: 400,
    //margin: const EdgeInsets.all(10.0),
    height: 300,
    child: Center(
      child: Container(
        margin: const EdgeInsets.all(30.0),
        //height: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomInputField(
              Icon(Icons.person, color: Colors.purple), 'Usuario'),
            CustomInputField(
              Icon(Icons.lock, color: Colors.purple), 'Contraseña'),
            CustomInputField(
              Icon(Icons.mail, color: Colors.purple), 'Correo Electronico'),
            CustomInputField(
              Icon(Icons.phone, color: Colors.purple), 'Telefono'),
            Container (
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
              ),
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    color: Colors.purple,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.arrow_forward, color: Colors.white)
                      ],
                    ),
                  )
                ],
              ),
            )
          ]
        )
      )
    ),
  );
}


Widget botonAdelante(){
  return Material(
    child: Center(
      child: Ink(
        decoration: const ShapeDecoration(
          color: Colors.purple,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: () {
              debugPrint('Tomaremos tus datos');
            },
          ),
      ),
    ),
  );
}


Widget botonIniciarSesion(){
  return FlatButton(
    color: Colors.white,
    onPressed: (){
      debugPrint('Bienvenido de nuevo');
    },
    child: Text("Iniciar Sesion", style: TextStyle(fontSize: 20, color: Colors.purple))
    );
}

Widget botonRegistrarse(){
  return FlatButton(
    color: Colors.purple,
    onPressed: (){
      debugPrint('Bienvenido a nuestra plataforma');
    },
    child: Text("Registrarse", style: TextStyle(fontSize: 20, color: Colors.white))
    );
}

Widget botonGmail(){
  return Center(
    child: Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.all(Radius.circular(10.0)),
        image: DecorationImage(
          image: AssetImage('assets/icons8-google-plus-48.png'),
        ),
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: (){
          debugPrint('Bienvenido a Gmail');
        },
        child: null,
      ),
    ),
    );
}



Widget botonFacebook(){
  return Center(
    child: Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons8-facebook-64.png'),
        ),
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: (){
          debugPrint('Bienvenido a Facebook');
        },
        child: null,
      ),
    ),
    );
}

/*
Widget botonGmail(){
  return FlatButton(
    color: Colors.red,
    onPressed: (){},
    child: Text("gmail", style: TextStyle(fontSize: 20, color: Colors.white))
    );
}*/

/*Widget botonFacebook(){
  return FlatButton(
    color: Colors.blue,
    onPressed: (){},
    child: Text("facebook", style: TextStyle(fontSize: 20, color: Colors.white))
    );
}*/