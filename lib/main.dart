/*
 * Copyright 2019 Google LLC
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     https://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';

import 'package:programa40/page/home_page.dart';
import 'package:programa40/provider.dart';
import 'package:provider/provider.dart';
import 'package:geocoding/geocoding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('------------------------------');
  await locationFromAddress("Santa Cruz,bolivia")
      .then((value) => print("jose " + value.toString()));
  print('--------------------------------');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    UbicacionProvider ds = UbicacionProvider();

    return ChangeNotifierProvider(
      create: (context) => UbicacionProvider(),
      child: MaterialApp(
        initialRoute: 'home',
        debugShowCheckedModeBanner: false,
        routes: {'home': (_) => HomePage()},
      ),
    );
  }
}
