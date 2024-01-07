import 'package:flutter/material.dart';
import 'package:gojek_clone/constant/color.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Gojek Clone',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: const ColorScheme.light( primary: Color(0xff3A872B)),
        useMaterial3: true,
        
      ),
      home: HomeScreen(),
    );
  }
}
      