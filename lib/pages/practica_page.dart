import 'package:flutter/material.dart';

class PracticaPage extends StatefulWidget {
  @override
  _ButtomPageState createState() => _ButtomPageState();
}

class _ButtomPageState extends State<PracticaPage> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica Page'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_contador', style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.amber,
                  onPressed: _aumentar,
                  child: Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
                FlatButton(
                  color: Colors.amber,
                  onPressed: _decrementar,
                  child: Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
                FlatButton(
                  color: Colors.amber,
                  onPressed: _restaurar,
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _aumentar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _restaurar() {
    setState(() {
      _contador = 0;
    });
  }
}
