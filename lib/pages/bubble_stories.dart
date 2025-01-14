import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String path;
  const BubbleStories({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            width: 80, // Adjusted for proportion
            height: 80, // Adjusted for proportion
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.orange,
                width: 5, // Width of the border
              ),
              image: DecorationImage(
                image: AssetImage(path), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(text)
        ],
      ),
    );
  }
}
