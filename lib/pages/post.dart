import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  final String caption;
  final String path;
  final String name;
  const MyPost(
      {super.key,
      required this.caption,
      required this.path,
      required this.name});

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
                Text(name),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite),
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
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 3),
              child: Text('Liked by'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0, top: 3, right: 2.0),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assests/images/P5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 3),
              child: Text(
                'Gojo Saturo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text('and others')
          ],
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'User ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: caption,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
