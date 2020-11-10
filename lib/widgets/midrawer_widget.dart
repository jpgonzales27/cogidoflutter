import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigoAccent),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          drawerItem(Icons.home, 'Home', context, 'home'),
          drawerItem(Icons.file_download, 'Campos Texto', context, 'texto'),
          drawerItem(Icons.email, 'Ejemplo Card', context, 'card'),
          drawerItem(
              Icons.collections_bookmark, 'Rows - Columns', context, 'fyc'),
          drawerItem(Icons.login, 'Ejemplo login', context, 'login'),
          drawerItem(Icons.home_work, 'Tarea1', context, 'tarea1'),
          drawerItem(
              Icons.radio_button_checked, 'Ejemplo boton', context, 'boton'),
          drawerItem(Icons.file_download, 'Practica', context, 'practica'),
          drawerItem(Icons.plus_one_rounded, 'Tarea3', context, 'tarea3'),
        ],
      ),
    );
  }
}

Widget drawerItem(
    IconData icono, String texto, BuildContext context, String nombreRuta) {
  return ListTile(
    leading: Icon(icono),
    title: Text(texto),
    onTap: () {
      Navigator.pushNamed(context, nombreRuta);
    },
  );
}
