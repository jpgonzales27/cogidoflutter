import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';
import 'package:practica/widgets/texto_widget.dart';

class FilasColumnasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text('Filas y Columnas'),
        ),
        body: Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('texto'),
                    TextoWidget(nombre: 'Antonio', apellido: 'Torrez'),
                    Text('texto'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('texto'),
                    TextoWidget(nombre: 'Antonio', apellido: 'Torrez'),
                    Text('texto'),
                  ],
                ),
              ],
            )));
  }
}
