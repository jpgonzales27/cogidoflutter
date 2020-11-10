import 'package:flutter/material.dart';
import 'package:practica/widgets/micard_widget.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class SolucionTarea1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('App Bar'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MiCard(
                mensaje: 'Flutter es genial',
                icono: Icons.battery_alert,
                color: Colors.red,
              ),
              MiCard(
                mensaje: 'Es mi primer prueba',
                icono: Icons.electric_bike,
                color: Colors.blue,
              ),
              MiCard(
                mensaje: 'Intentalo',
                icono: Icons.gamepad,
                color: Colors.black,
              ),
              MiCard(
                mensaje: 'Color por defecto',
                icono: Icons.share,
              ),
              MiCard(
                mensaje: 'Color por defecto',
                icono: Icons.share,
              ),
              MiCard(
                mensaje: 'Color por defecto',
                icono: Icons.share,
              ),
              _miTarjeta('hola', Icons.ad_units, Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }

  Padding _miTarjeta(String nombre, IconData icono, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
        child: Container(
          width: double.infinity,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: TextStyle(color: Colors.grey, fontSize: 30),
              ),
              SizedBox(height: 10),
              Icon(icono, color: color, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
