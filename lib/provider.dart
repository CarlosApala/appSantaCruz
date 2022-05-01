import 'package:flutter/material.dart';

class UbicacionProvider with ChangeNotifier {
  String _ubicaciones = "";

  String get ubicacion => _ubicaciones;
  set ubicacion(String ubicaciones) {
    _ubicaciones = ubicaciones;
    notifyListeners();
  }
}
