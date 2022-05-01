import 'package:flutter/material.dart';
import 'package:programa40/WgoogleMaps.dart';
import 'package:programa40/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ubicacion = Provider.of<UbicacionProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('inicio')),
      body: Column(
        children: [
          Container(
            width: size.width,
            child: Row(
              children: [
                Container(
                    width: size.width * 0.6,
                    child: TextField(
                      controller: _controller,
                    )),
                Container(
                    width: size.width * 0.3,
                    child: ElevatedButton(
                        onPressed: () => ubicacion.ubicacion = _controller.text,
                        child: Text('buscar'))),
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
