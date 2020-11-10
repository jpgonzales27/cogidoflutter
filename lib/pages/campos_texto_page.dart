import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class CamposTextoPage extends StatefulWidget {
  @override
  _CamposTextoPageState createState() => _CamposTextoPageState();
}

class _CamposTextoPageState extends State<CamposTextoPage> {
  List<String> lista = ['Hola', 'Como estas', 'Que tal tu dia'];
  String _mensaje = '';

  final textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Campos de texto'),
        actions: [
          IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextField(
                controller: textoController,
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
                onSubmitted: (value) {
                  setState(() {
                    lista.add(value);
                    textoController.text = '';
                    _mensaje = '';
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('$_mensaje', style: TextStyle(fontSize: 20)),
              ),
              Container(
                //color: Colors.red,
                height: 500,
                child: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      leading: Icon(Icons.add_alert_sharp),
                      title: Text('$i - ${lista[i]} '),
                      subtitle: Text('Estes  es un subtitulo'),
                      trailing: Icon(Icons.add_to_home_screen_rounded),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
