import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Card Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
              padding: EdgeInsets.all(20),
              height: 200,
              width: 300,
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Esto es una tarjeta',
                    style: TextStyle(fontSize: 20, color: Colors.indigoAccent),
                  ),
                  Icon(Icons.android, size: 60, color: Colors.greenAccent)
                ],
              )),
        ),
      ),
    );
  }
}
