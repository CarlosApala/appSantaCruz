import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WGoogleMpas extends StatefulWidget {
  WGoogleMpas({Key? key}) : super(key: key);

  @override
  State<WGoogleMpas> createState() => _WGoogleMpasState();
}

class _WGoogleMpasState extends State<WGoogleMpas> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-17.782782384397713, -63.18248363742262);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 40.0),
        width: 350,
        height: 550,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 13.0,
          ),
        ));
  }
}
