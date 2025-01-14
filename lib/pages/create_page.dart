import 'package:flutter/material.dart';
import 'package:instagram/pages/explore_grid.dart';
import 'package:instagram/pages/page_grdi.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "New Reel",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.archive),
            color: Colors.white,
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Camera',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Drafts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.widgets,
                              color: Colors.white,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Templates',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recents",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        PageGrid(path: 'assests/images/P1.jpg'),
                        PageGrid(path: 'assests/images/P2.jpg'),
                        PageGrid(path: 'assests/images/P3.jpg'),
                      ],
                    ),
                    Row(
                      children: [
                        PageGrid(path: 'assests/images/P4.jpg'),
                        PageGrid(path: 'assests/images/P5.jpg'),
                        PageGrid(path: 'assests/images/P6.jpg'),
                      ],
                    ),
                    Row(
                      children: [
                        PageGrid(path: 'assests/images/P7.jpg'),
                        PageGrid(path: 'assests/images/P8.jpg'),
                        PageGrid(path: 'assests/images/P9.jpg'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Image.asset(
                  'assests/images/new_image.jpg',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
