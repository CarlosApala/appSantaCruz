import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionProvider with ChangeNotifier {
  late Location _location;
  late GoogleMapController _controller;
  late LatLng latLng;

  set controladorGoogle(GoogleMapController controller) {
    _controller = controller;
    //controlador23(_ubicacion);
    //notifyListeners();
  }

  GoogleMapController get controladorGoogle => _controller;

  void controlador23(String con) async {
    List<Location> listLocation = await locationFromAddress(con);

    _location = listLocation.first;
    latLng = LatLng(_location.latitude, _location.longitude);
    _controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: latLng, zoom: 13)));
    notifyListeners();
  }

  String _ubicacion = "Santa Cruz, Bolivia";
  String get ubicacion => _ubicacion;
  set ubicacion(String ubica) {
    _ubicacion = ubica;

    controlador23(_ubicacion);
    notifyListeners();
  }
}
