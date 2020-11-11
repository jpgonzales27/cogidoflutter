import 'package:flutter/material.dart';
import 'package:practica/models/Alumno.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class ListViewPage extends StatelessWidget {
  final List<Alumno> listaAlumnos = [
    Alumno(nombre: 'miguel', telefo: '111', email: 'm@gmail.com'),
    Alumno(nombre: 'ana', telefo: '222', email: 'a@gmail.com'),
    Alumno(nombre: 'patricia', telefo: '333', email: 'p@gmail.com'),
    Alumno(nombre: 'roberto', telefo: '444', email: 'r@gmail.com'),
    Alumno(nombre: 'maria', telefo: '555', email: 'ma@gmail.com'),
    Alumno(nombre: 'marcos', telefo: '666', email: 'mar@gmail.com'),
    Alumno(nombre: 'andrea', telefo: '777', email: 'mar@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text('Ejemplo listview')),
      body: Container(
        child: ListView(
          children: _listaItem(),
        ),
      ),
    );
  }

  List<Widget> _listaItem() {
    return listaAlumnos.map((alum) {
      return ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Text(alum.nombre[0].toUpperCase()),
        ),
        title: Text(alum.nombre),
        subtitle: Text(alum.email),
        trailing: Text(alum.telefo),
      );
    }).toList();
  }
}
