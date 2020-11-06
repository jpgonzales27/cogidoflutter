import 'dart:math';

import 'package:flutter/material.dart';

class ButtomPage extends StatefulWidget {
  @override
  _ButtomPageState createState() => _ButtomPageState();
}

class _ButtomPageState extends State<ButtomPage> {
  final List<String> _listaMensajes = [
    'Hola mundo',
    'Bienvenido a Flutter',
    'Este es un ejemplo'
  ];

  int _pos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo State'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_listaMensajes[_pos], style: TextStyle(fontSize: 30)),
            FlatButton(
              color: Colors.indigoAccent,
              //onPressed: () => _aumentar(),
              onPressed: _aumentar,
              child: Text(
                'Presionar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _aumentar() {
    setState(() {
      // if (_pos < 2) {
      //   _pos++;
      // } else {
      //   _pos = 0;
      // }

      //_pos < 2 ? _pos++ : _pos = 0;
      _pos = Random().nextInt(3);
      print(_pos);
    });
  }
}
