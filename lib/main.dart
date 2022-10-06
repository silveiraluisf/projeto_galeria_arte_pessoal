import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
        backgroundColor: Colors.amber[300],
        canvasColor: const Color.fromRGBO(20, 20, 20, 1),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Colors.white,
            fontSize: 16
          )
        )
      ),
      home: const HomeScreen(),
    );
  }
}



