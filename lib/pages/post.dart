import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Text("Name"),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
        ),
        Row(
          children: [
            Icon(Icons.favorite),
            Icon(Icons.comment),
            Image.asset(
              'assests/images/DM.png',
              height: 25,
              width: 25,
            )
          ],
        )
      ],
    );
  }
}
