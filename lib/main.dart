import 'package:flutter/material.dart';
import 'package:proyectof1/inventario.dart';
import 'package:proyectof1/acerca.dart';
import 'package:proyectof1/home_screen.dart';
import 'package:proyectof1/scanner.dart';
import 'package:proyectof1/editar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quickscan',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/scanner': (context) => ScanneraPage(),
        '/inventario': (context) => InventarioPage(), 
        '/editar': (context) => EditarPage(),
        '/acerca de': (context) => AcercaPage(),
      },
    );
  }
}
