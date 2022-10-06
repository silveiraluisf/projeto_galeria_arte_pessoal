import 'package:flutter/material.dart';
import 'package:projeto_galeria_arte_pessoal/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(20, 20, 20, 1),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber
        )
      ),
      home: HomeScreen(),
    );
  }
}



