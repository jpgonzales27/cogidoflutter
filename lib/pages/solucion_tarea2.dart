import 'package:flutter/material.dart';

class SolucionTarea2Page extends StatefulWidget {
  @override
  _SolucionTarea2PageState createState() => _SolucionTarea2PageState();
}

class _SolucionTarea2PageState extends State<SolucionTarea2Page> {
  int _valor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Solucion Tarea 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_valor', style: TextStyle(fontSize: 30, color: Colors.red)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  onPressed: () {
                    print(_valor);
                    _valor++;
                    setState(() {});
                  },
                  child: Text('+'),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      _valor--;
                    });
                  },
                  child: Text('-'),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      _valor = 0;
                    });
                  },
                  child: Text('0'),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
