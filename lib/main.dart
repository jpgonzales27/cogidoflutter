import 'package:flutter/material.dart';
import 'package:practica/pages/buttom_page.dart';
import 'package:practica/pages/campos_texto_page.dart';
import 'package:practica/pages/pagina1_page.dart';
import 'package:practica/pages/practica_page.dart';
import 'package:practica/pages/solucion_tarea2.dart';
import './pages/card_page.dart';
import './pages/filasycolumnas_pages.dart';
import './pages/home_page.dart';
import './pages/solucion_tarea1.dart';
import 'pages/ejemploLista_page.dart';
import 'pages/listview_page.dart';
import 'pages/login_pagen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      initialRoute: 'texto',
      routes: {
        'home': (_) => HomePage(),
        'card': (_) => CardPage(),
        'fyc': (_) => FilasColumnasPage(),
        'login': (_) => LoginPage(),
        'tarea1': (_) => SolucionTarea1(),
        'boton': (_) => ButtomPage(),
        'practica': (_) => PracticaPage(),
        'tarea3': (_) => SolucionTarea2Page(),
        'texto': (_) => CamposTextoPage(),
        'pagina1': (_) => Pagina1Page(),
        'alumno': (_) => ListViewPage(),
        'lista': (_) => ListaPersonaPage()
      },
    );
  }
}
