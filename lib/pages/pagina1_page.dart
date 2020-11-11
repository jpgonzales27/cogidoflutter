import 'package:flutter/material.dart';
import 'package:practica/pages/pagina2_page.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Paginacion'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Presionar'),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Pagina2Page(mensajeBoton: 'Hola desde pagina 1')),
            );
          },
        ),
      ),
    );
  }
}
