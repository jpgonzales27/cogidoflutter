import 'package:flutter/material.dart';
import 'package:practica/widgets/midrawer_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/face.png'),
          ),
          Text(
            'Juan P Gonzales',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.green[300],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 30,
              color: Colors.green,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text('jp@gmail.com'),
              subtitle: Text('Esto es un subtilo'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      )),
    );
  }
}
