import 'package:flutter/material.dart';

class ListaSeleccionados extends StatelessWidget {
  final List<String> lista;

  ListaSeleccionados({@required this.lista});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seleccionados'),
      ),
      body: ListView(
        children: _listaItem(),
      ),
    );
  }

  List<Widget> _listaItem() {
    return lista.map((e) {
      return ListTile(
        leading: CircleAvatar(
          child: Text(e.toString()[0].toUpperCase()),
        ),
        title: Text(e),
      );
    }).toList();
  }
}
