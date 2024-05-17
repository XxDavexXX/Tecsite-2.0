import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: Center(
        child: Text(
          'Hola, bienvenido a tu aplicación!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
