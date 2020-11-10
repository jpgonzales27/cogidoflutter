import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';
import 'package:practica/widgets/texto_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Mi primer app flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: TextoWidget(nombre: 'Juan', apellido: 'Gonzales'),
      ),
    );
  }
}
