import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class Pagina2Page extends StatelessWidget {
  final String mensajeBoton;

  Pagina2Page({@required this.mensajeBoton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(mensajeBoton),
          color: Colors.indigo,
          textColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
