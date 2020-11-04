import 'package:flutter/material.dart';
import 'package:practica/pages/buttom_page.dart';
import './pages/card_page.dart';
import './pages/filasycolumnas_pages.dart';
import './pages/home_page.dart';
import './pages/solucion_tarea1.dart';
import 'pages/login_pagen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      initialRoute: 'boton',
      routes: {
        'home': (_) => HomePage(),
        'card': (_) => CardPage(),
        'fyc': (_) => FilasColumnasPage(),
        'login': (_) => LoginPage(),
        'tarea1': (_) => SolucionTarea1(),
        'boton': (_) => ButtomPage(),
      },
    );
  }
}
