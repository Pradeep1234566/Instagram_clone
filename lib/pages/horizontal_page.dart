import 'package:flutter/material.dart';

class HorizontalSelector extends StatefulWidget {
  const HorizontalSelector({Key? key}) : super(key: key);

  @override
  _HorizontalSelectorState createState() => _HorizontalSelectorState();
}

class _HorizontalSelectorState extends State<HorizontalSelector> {
  int selectedIndex = 2; // Default to "REEL"

  final List<String> options = ['POST', 'STORY', 'REEL', 'LIVE'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: options.asMap().entries.map((entry) {
          int index = entry.key;
          String text = entry.value;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.grey,
                    fontSize: 16,
                    fontWeight: selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                SizedBox(height: 4),
                if (selectedIndex == index)
                  Container(
                    width: 40,
                    height: 2,
                    color: Colors.white,
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
