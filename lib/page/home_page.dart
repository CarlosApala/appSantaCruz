import 'package:flutter/material.dart';
import 'package:programa40/WgoogleMaps.dart';
import 'package:programa40/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ubicacion = Provider.of<UbicacionProvider>(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('inicio')),
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            child: Row(
              children: [
                SizedBox(
                    width: size.width * 0.6,
                    child: TextField(controller: _controller)),
                SizedBox(
                    width: size.width * 0.3,
                    child: ElevatedButton(
                        onPressed: () {
                          ubicacion.ubicacion = _controller.text;
                        },
                        child: const Text('buscar'))),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(ubicacion.ubicacion),
          ),
          WGoogleMpas()
        ],
      ),
    );
  }
}
