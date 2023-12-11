import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuickScan'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('CEUTEC S.P.S.'),
              accountEmail: Text('QuickScan.com.hn'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1714770036777254912/EYUl_TpT_400x400.jpg',
                ),
              ),
            ),
            ListTile(
              title: Text('Scanner'),
              leading: Icon(Icons.scanner),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/scanner');
              },
            ),
            ListTile(
              title: Text('Inventario'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/inventario');
              },
            ),
            ListTile(
              title: Text('Editar Producto'),
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/editar');
              },
            ),
            ListTile(
              title: Text('Acerca de'),
              leading: Icon(Icons.question_mark),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/acerca de');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://me-qr.com/static/pages/scan-qr-codes--with-windows-or-macos/static-image/img1.png',
              height: 200.0,
              width: 200.0,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 16.0),
            Text(
              '¡Bienvenido a QuickScan!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'QuickScan es una app que te permite gestionar tu inventario de forma rápida y sencilla.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                // Agregar la lógica para navegar al historial de navegación aqui
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                HomeScreen();
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
