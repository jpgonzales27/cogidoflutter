import 'package:flutter/material.dart';
import 'package:practica/widgets/texto_widget.dart';

class FilasColumnasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filas y Columnas'),
        ),
        body: Container(
          //color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisSize: MainAxisSize.min,
            children: [
              Text('texto'),
              TextoWidget(nombre: 'Antonio', apellido: 'Torrez'),
              Text('texto'),
            ],
          ),
        ));
  }
}
