import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Definir un OutlineInputBorder personalizado con color de borde azul
    // Definir un OutlineInputBorder personalizado con color de borde azul
    final OutlineInputBorder customInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), // Borde redondeado
      borderSide: BorderSide(color: Colors.blue), // Borde de color azul
    );

    final inputFormatter = LengthLimitingTextInputFormatter(6);

    return Scaffold(
      backgroundColor: Colors.white, // Establecer el color de fondo a blanco
      body: Center(
        child: Container(
          width: 400, // Ancho del contenedor
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajustar al tamaño mínimo
            children: [
              // Imagen
              Image.asset(
                'assets/t_tecsup.jpg', // Ruta de la imagen
                width: 120, // Ancho de la imagen
              ),
              SizedBox(height: 28), // Espaciado entre la imagen y los inputs
              // Input 1
              // Input 1
              TextField(
                decoration: InputDecoration(
                  hintText: 'Código Estudiantil',
                  border: customInputBorder, // Usar el OutlineInputBorder personalizado
                  enabledBorder: customInputBorder, // Borde cuando el TextField está habilitado
                  focusedBorder: customInputBorder, // Borde cuando el TextField está enfocado
                  contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16), // Relleno interno del campo
                ),
                inputFormatters: [inputFormatter], // Aplicar el formateador de entrada
                keyboardType: TextInputType.number, // Tipo de teclado numérico
              ),
              SizedBox(height: 20), // Espaciado entre los inputs
              // Input 2
              TextField(
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: customInputBorder, // Usar el OutlineInputBorder personalizado
                  enabledBorder: customInputBorder, // Borde cuando el TextField está habilitado
                  focusedBorder: customInputBorder, // Borde cuando el TextField está enfocado
                  contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16), // Relleno interno del campo
                ),
                obscureText: true, // Ocultar texto de la contraseña
              ),
              SizedBox(height: 20), // Espaciado entre los inputs y el botón
              // Botón

              // Botón
              Container(
                width: double.infinity, // Ancho completo
                height: 48, // Altura igual a la de los TextField
                child: OutlinedButton(
                  onPressed: () {
                    // Acción del botón
                  },
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 20), // Aumentar el tamaño de la fuente a 20
                  ),
                  style: ButtonStyle( // Usamos ButtonStyle en lugar de OutlinedButton.styleFrom
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Color de fondo azul
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Color del texto blanco
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.blue)), // Borde de color azul
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Borde redondeado
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
