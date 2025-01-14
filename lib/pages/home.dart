import 'package:flutter/material.dart';
import 'package:instagram/pages/bubble_stories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Instagram",
            style: TextStyle(
              fontFamily: 'Cursive',
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.normal,
              fontSize: 24,
            ),
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 20),
            Icon(Icons.favorite_border),
            SizedBox(width: 20),
            Image.asset(
              'assests/images/DM.png',
              height: 25,
              width: 25,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 5),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                BubbleStories(),
                BubbleStories(),
                BubbleStories(),
                BubbleStories(),
                BubbleStories(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
