import 'package:flutter/material.dart';
import 'package:tecsite/screens/splash_screen.dart'; // Importa la pantalla de presentación

void main() {
  runApp(Tecsite());
}

class Tecsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tecsite',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Configura la pantalla de presentación como la pantalla inicial
    );
  }
}
