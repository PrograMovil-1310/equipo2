import 'package:flutter/material.dart';

class AcercaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de QuickScan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/7/77/Saraswati_wikipedia_article_QR_mobile_device_scan_code.png', 
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'QuickScan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Una aplicación para gestión de inventario y búsqueda rápida mediante escáner de código QR o de barras.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Características:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Escaneo rápido de códigos de barras y QR.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Gestión eficiente de inventario.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Búsqueda rápida y precisa.'),
            ),
            SizedBox(height: 20),
            Text(
              'Desarrollado por: Gerson López, Carlos Pinto, Marcio Moran',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
