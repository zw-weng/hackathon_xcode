import 'package:flutter/material.dart';

class TutoringScreen extends StatelessWidget {
  const TutoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutoring'),
      ),
      body: const Center(
        child: Text('Book a Tutor'),
      ),
    );
  }
}
