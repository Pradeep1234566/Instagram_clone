import 'package:flutter/material.dart';
import 'package:instagram/pages/bubble_stories.dart';
import 'package:instagram/pages/post.dart';

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
  final List<String> Story = [
    'assests/images/P1.jpg',
    'assests/images/P2.jpg',
    'assests/images/P3.jpg',
    'assests/images/P4.jpg',
    'assests/images/P5.jpg',
    'assests/images/P6.jpg',
    'assests/images/P7.jpg',
    'assests/images/P8.jpg',
    'assests/images/P9.jpg',
    'assests/images/P10.jpg'
  ];
  final List<String> Quotes = [
    "The greatest battles are fought within the silent chambers of the soul.",
    "The paradox of life is that it is both fleeting and infinite, a moment and an eternity.",
    "We are not given a good or bad life. We are given a life, and it’s up to us to make it good or bad.",
    "Sometimes, we must let go of the life we have planned to embrace the one waiting for us.",
    "It is not the years in your life that count, but the life in your years.",
    "A ship is safe in harbor, but that’s not what ships are for.",
    "Your perception of me is a reflection of you; my reaction to you is an awareness of me.",
    "Freedom lies in being bold enough to let go of what you cannot control.",
    "You don’t have a soul. You are a soul. You have a body.",
    "Do not follow where the path may lead. Go instead where there is no path and leave a trail."
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
              height: 1,
            ),
            Container(
                height: 110,
                child: ListView.builder(
                    itemCount: Name.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BubbleStories(
                          text: Name[index], path: Story[index]);
                    })),
            SizedBox(height: 2),
            Expanded(
              child: ListView.builder(
                itemCount:
                    Name.length, // Replace with the actual number of posts
                itemBuilder: (context, index) {
                  return MyPost(
                    caption: Quotes[index],
                    path: 'assests/images/P1.jpg',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
