import 'package:dio/dio.dart';
import 'package:proyectof1/domain/entities/respuesta.dart';

class GetInventario {
  final String baseUrl = "https://backend-proyectos-production.up.railway.app/inventario-quickscans";
  final Dio _dio = Dio();

  Future<List<Inventario>> getInventario() async {
    try {
      final response = await _dio.get('$baseUrl/https://backend-proyectos-production.up.railway.app/inventario-quickscans');
      final List<dynamic> inventarioList = response.data;

      List<Inventario> respuestaInventario =
          inventarioList.map((item) => Inventario.fromJson(item)).toList();
      return respuestaInventario;
    } catch (error) {
      print('Error fetching inventory: $error');
      throw error;
    }
  }
}
