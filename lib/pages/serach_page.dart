import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/pages/explore_grid.dart';

class SearchPage extends StatelessWidget {
  final List<String> Search = [
    'assests/images/S1.jpg',
    'assests/images/S2.jpg',
    'assests/images/S3.jpg',
    'assests/images/S4.jpg',
    'assests/images/S5.jpg',
    'assests/images/S6.jpg',
    'assests/images/S7.jpg',
    'assests/images/S8.jpg',
    'assests/images/S9.jpg',
    'assests/images/S10.jpg',
    'assests/images/S11.jpg',
    'assests/images/S12.png'
  ];
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8), // Add spacing between the icon and text
                Text("Search", style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
        ),
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: Search.length,
          itemBuilder: (context, index) {
            return ExploreGrid(path: Search[index]);
          },
        ),
      ),
    );
  }
}
