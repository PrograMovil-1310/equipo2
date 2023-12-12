import 'dart:convert';

class Inventario {
  int id;
  String name;
  String stock;
  DateTime date;

  Inventario({
    required this.id,
    required this.name,
    required this.stock,
    required this.date,
  });

  factory Inventario.fromJson(Map<String, dynamic> json) {
    return Inventario(
      id: json['ID'],
      name: json['name'],
      stock: json['stock'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() => {
        "ID": id,
        "name": name,
        "stock": stock,
        "date": date.toIso8601String(),
      };
}
