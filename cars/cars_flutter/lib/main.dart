import 'package:cars_flutter/screens/car_screen.dart';
import 'package:flutter/material.dart';
import 'package:refena_flutter/refena_flutter.dart';

void main() {
  runApp(
    RefenaScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Serverpod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CarScreen(),
    );
  }
}
