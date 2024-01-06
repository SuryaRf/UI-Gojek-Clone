import 'package:flutter/material.dart';
import 'package:gojek_clone/screen/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Clone',
      theme: ThemeData(
        fontFamily: 'Maison Neue Bold',
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 255, 21)),
        useMaterial3: true,
        
      ),
      home: HomeScreen(),
    );
  }
}
      