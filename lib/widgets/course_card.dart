import 'package:flutter/material.dart';
import 'package:demo/models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              course.iconPath,
              height: 50, // Adjust icon size as needed
            ),
            const SizedBox(height: 10),
            Text(
              course.name,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 18, // Modern font size
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
