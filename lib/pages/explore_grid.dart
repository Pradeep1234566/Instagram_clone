import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  final String path;
  const ExploreGrid({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjusted height
      width: 100, // Adjusted width
      padding: const EdgeInsets.all(3.0),
      child: Image.asset(path,
          fit: BoxFit.cover), // Added BoxFit.cover to maintain aspect ratio
    );
  }
}
