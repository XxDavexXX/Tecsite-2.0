import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 2; // Default to the middle icon (home)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Aquí puedes manejar la navegación según el índice seleccionado
    // Por ejemplo, usando un Navigator o cualquier otra lógica de navegación
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.card_membership, color: Colors.blue),
          label: 'Carnet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, color: Colors.blue),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blue),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment, color: Colors.blue),
          label: 'Asistencia',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.blue),
          label: 'Configuración',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
