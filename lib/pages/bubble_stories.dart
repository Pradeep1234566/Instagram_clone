import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String path;
  const BubbleStories({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(path),
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
