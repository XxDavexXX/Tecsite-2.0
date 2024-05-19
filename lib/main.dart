import 'package:flutter/material.dart';
import 'package:tecsite/screens/splash_screen.dart';
import 'package:tecsite/screens/home/home_screen.dart';
import 'package:tecsite/screens/login/login_screen.dart'; // Importa la pantalla de login

void main() {
  runApp(Tecsite());
}

class Tecsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tecsite',
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => SplashScreen(), // Pantalla de presentación
        '/login': (context) => LoginScreen(), // Pantalla de login
        '/home': (context) => HomeScreen(), // Pantalla principal
      },
    );
  }
}
