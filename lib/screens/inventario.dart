import 'package:flutter/material.dart';
import 'package:proyectof1/domain/entities/respuesta.dart';
import 'package:proyectof1/provider/respuesta_provider.dart';

class InventarioPage extends StatefulWidget {
  @override
  _InventarioPageState createState() => _InventarioPageState();
}

class _InventarioPageState extends State<InventarioPage> {
  final RespuestaProvider _respuestaProvider = RespuestaProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: _respuestaProvider.loadRespuesta(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Obtiene la lista de inventario desde RespuestaProvider
                  List<Inventario> productos = _respuestaProvider.inventarioList;

                  return Column(
                    children: [
                      SizedBox(height: 20),
                      Text('Lista de Productos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: productos.length,
                          itemBuilder: (context, index) {
                            final producto = productos[index];
                            return Card(
                              child: ListTile(
                                title: Text(producto.name),
                                subtitle: Text(
                                  'ID Producto: ${producto.id} - name: ${producto.name} - Stock: ${producto.stock} - fecha: ${producto.date}',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
