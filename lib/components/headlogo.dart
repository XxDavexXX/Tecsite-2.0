import 'package:flutter/material.dart';

class HeadLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200], // Color ligeramente gris
      child: Center(
        child: Image.asset(
          'assets/t_logo2.png', // Ruta de la imagen
          width: 60, // Ancho de la imagen (puedes ajustar este valor según tus necesidades)
        ),
      ),
    );
  }
}
