import 'package:flutter/material.dart';
import 'package:demo/screens/base_screen.dart'; // Your home screen
import 'package:demo/screens/login_screen.dart'; // The login screen
import 'package:demo/screens/register_screen.dart'; // The register screen

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
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => BaseScreen(),
      },
    );
  }
}
