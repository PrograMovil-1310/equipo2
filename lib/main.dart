import 'package:flutter/material.dart';
import 'package:proyectof1/screens/inventario.dart';
import 'package:proyectof1/screens/acerca.dart';
import 'package:proyectof1/screens/home_screen.dart';
import 'package:proyectof1/screens/scanner.dart';
import 'package:proyectof1/screens/editar.dart';

void main() {
  runApp(MyApp());
}

//Main Principal
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
