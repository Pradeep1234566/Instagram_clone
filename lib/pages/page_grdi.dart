import 'package:flutter/material.dart';

class PageGrid extends StatelessWidget {
  final String path;
  const PageGrid({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0), // Add padding here
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: 125.5,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              path, // Replace with your image path
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
