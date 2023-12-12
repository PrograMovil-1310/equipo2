import 'package:flutter/material.dart';
import 'package:proyectof1/domain/entities/respuesta.dart';
import 'package:proyectof1/helper/get_db_answer.dart';

class RespuestaProvider extends ChangeNotifier {
  final GetInventario _getInventario = GetInventario();
  List<Inventario> inventarioList = [];

  Future<void> loadRespuesta() async {
    try {
      inventarioList = await _getInventario.getInventario();
      notifyListeners();
    } catch (error) {
      print('Error loading inventory: $error');
    }
  }
}
