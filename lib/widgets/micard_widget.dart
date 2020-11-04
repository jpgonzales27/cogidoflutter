import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  final String mensaje;
  final IconData icono;
  final Color color;

  MiCard({
    @required this.mensaje,
    @required this.icono,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
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
                mensaje,
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
