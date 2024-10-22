import 'package:demo/models/course.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Course course; // Use the Course model
  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(course.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(course.description), // Display course description
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          // Add action when the card is tapped
        },
      ),
    );
  }
}