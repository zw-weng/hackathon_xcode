import 'package:flutter/material.dart';
import 'package:demo/screens/base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduConnect',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const BaseScreen(),
    );
  }
}
