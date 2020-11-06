import 'package:flutter/material.dart';

class CamposTextoPage extends StatefulWidget {
  @override
  _CamposTextoPageState createState() => _CamposTextoPageState();
}

class _CamposTextoPageState extends State<CamposTextoPage> {
  String _mensaje = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campos de texto'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese su mensaje',
                labelText: 'Mensaje',
              ),
              onChanged: (value) {
                print(_mensaje);
                _mensaje = value;
                setState(() {});
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('$_mensaje', style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
