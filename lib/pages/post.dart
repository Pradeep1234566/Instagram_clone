import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  final String caption;
  final String path;
  const MyPost({super.key, required this.caption, required this.path});

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
                  padding: const EdgeInsets.only(
                      right: 8.0, top: 8.0, bottom: 8.0, left: 2),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text("Name"),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 10),
                Icon(
                  Icons.comment,
                  color: Colors.grey[800],
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assests/images/DM.png',
                  height: 25,
                  width: 25,
                ),
              ],
            ),
            Icon(Icons.bookmark_outline)
          ],
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(caption),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
