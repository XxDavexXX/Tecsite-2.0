import 'package:flutter/material.dart';
import 'package:tecsite/components/navbar.dart'; // Asegúrate de ajustar la ruta según tu estructura de carpetas
import 'package:tecsite/components/headlogo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadLogo(), // Utiliza el componente HeadLogo
          Expanded(
            child: Center(
              child: Text('Contenido de la pantalla principal'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(), // Utiliza el componente Navbar
    );
  }
}

