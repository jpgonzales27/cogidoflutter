import 'package:flutter/material.dart';

class TextoWidget extends StatelessWidget {
  final String nombre;
  final String apellido;

  TextoWidget({
    @required this.nombre,
    @required this.apellido,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          bottomLeft: Radius.circular(100),
        ),
      ),
      padding: EdgeInsets.all(50),
      child: Center(
        child: Text(
          'Hola $nombre $apellido bienvenido a flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
