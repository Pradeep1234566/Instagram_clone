import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile and stats
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'YourUserName',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 3),
                      Icon(Icons.verified,
                          color: Colors.blue, size: 20), // Verification badg
                      Icon(Icons.arrow_downward, size: 24), // Downward arrow
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assests/images/Threads.png',
                        width: 28,
                        height: 28,
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.add_box_outlined, size: 28), // Blue "+" button
                      SizedBox(width: 20),
                      Icon(Icons.menu, size: 28), // Menu icon
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Profile picture container with add button
                  Stack(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20), // Increased gap
                  // Stats: Posts, Followers, Following
                  Column(
                    children: [
                      Text(
                        '545',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  SizedBox(width: 20), // Increased gap
                  Column(
                    children: [
                      Text(
                        '2.8M',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  SizedBox(width: 20), // Increased gap
                  Column(
                    children: [
                      Text(
                        '231',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),

            // Profile Name and Bio
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your User Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                      children: [
                        TextSpan(text: 'CEO '),
                        TextSpan(
                          text: '@natalienunncosmetics ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: '@fashionnova',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(text: '\nCEO '),
                        TextSpan(
                          text: '@fitbypaynes ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: '@journeyshair',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(text: ' baddie blunts\n'),
                        TextSpan(
                          text: '@baddiecodeshow ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(text: 'ALL BOOKINGS GO THRO\n'),
                        TextSpan(text: 'missnatalienunn@gmail.com'),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: -45 *
                            (3.14159265359 / 180), // Convert degrees to radians
                        child: Icon(
                          Icons.link, // Link icon
                          color: Colors.blue, // Blue color for the icon
                          size: 24, // Adjust the size as needed
                        ),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          'linktr.ee/missnatalienunn',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Light grey background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Professional Dashboard',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '163M views in the last 30 days',
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                Colors.grey.shade600, // Subtle grey text color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Buttons: Edit Profile, Share Profile, Add Friend
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 34),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200, // Light grey background color

                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 37),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200, // Light grey background color

                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Share Profile',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Story Highlights (Placeholders)
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
