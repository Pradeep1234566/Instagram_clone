import 'package:flutter/material.dart';
import 'package:instagram/pages/bubble_stories.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<String> Name = [
    'User 1',
    'User 2',
    'User 3',
    'User 4',
    'User 5',
    'User 6',
    'User 7',
    'User 8',
    'User 9',
    'User 10',
  ];
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
            Container(
                height: 130,
                child: ListView.builder(
                    itemCount: Name.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BubbleStories(
                        text: Name[index],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
