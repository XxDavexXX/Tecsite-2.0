import 'package:flutter/material.dart';

class FilaTablaConfiguracion extends StatelessWidget {
  final String label;
  final String value;
  final double leftLabelWidth; // Ancho fijo para el texto de la izquierda

  const FilaTablaConfiguracion({
    Key? key,
    required this.label,
    required this.value,
    this.leftLabelWidth = 61.0, // Ancho predeterminado para el texto de la izquierda
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10), // Margen a la izquierda de 20px y margen superior de 10px
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Texto de la izquierda en negrita con un ancho fijo
          SizedBox(
            width: leftLabelWidth,
            child: Text(
              '$label:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 12), // Espacio entre los textos
          // Texto de la derecha
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16, // Tamaño de la fuente para los textos de la derecha
              ),
            ),
          ),
        ],
      ),
    );
  }
}
