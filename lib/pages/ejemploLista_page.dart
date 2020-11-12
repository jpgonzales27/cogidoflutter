import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';

import 'ejemplolista2_page.dart';

class ListaPersonaPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ListaPersonaPage> {
  final List<String> listaPersona = [
    "ana",
    "pablo",
    "maria",
    "marcos",
    "andrea",
    "melissa"
  ];

  List<String> selecciondos = [];
  bool presionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Lista Personas'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ListaSeleccionados(lista: selecciondos),
                  ),
                );
              })
        ],
      ),
      body: ListView.builder(
        itemCount: listaPersona.length,
        itemBuilder: (BuildContext context, int i) {
          return _elementoLista(i);
        },
      ),
    );
  }

  Widget _elementoLista(int index) {
    final existe = selecciondos.contains(listaPersona[index]);
    return ListTile(
      leading: CircleAvatar(
        child: Text('$index'),
        backgroundColor: Colors.red,
      ),
      title: Text(listaPersona[index]),
      trailing: existe
          ? Icon(Icons.favorite, color: Colors.red)
          : Icon(Icons.favorite_border),
      onTap: () {
        setState(() {
          existe
              ? selecciondos.remove(listaPersona[index])
              : selecciondos.add(listaPersona[index]);
        });
      },
    );
  }
}
