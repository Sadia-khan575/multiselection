import 'package:flutter/material.dart';

class MultiSelection extends StatefulWidget {
  const MultiSelection({super.key});

  @override
  State<MultiSelection> createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  int select = 0; // Variable to track which container is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    select = 1;
                    setState(() {});
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    color: select == 1 ? Colors.purpleAccent : Colors.black,
                    child: Center(
                      child: Icon(
                        Icons.photo, // Picture icon
                        color: select == 1 ? Colors.black : Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select = 2;
                    setState(() {});
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    color: select == 2 ? Colors.red : Colors.blueGrey,
                    child: Center(
                      child: Icon(
                        Icons.videocam, // Video icon
                        color: select == 2 ? Colors.black : Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    select = 3;
                    setState(() {});
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    color: select == 3 ? Colors.pink : Colors.orange,
                    child: Center(
                      child: Icon(
                        Icons.music_note, // Music icon
                        color: select == 3 ? Colors.black : Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select = 4;
                    setState(() {});
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    color: select == 4 ? Colors.yellow : Colors.red,
                    child: Center(
                      child: Icon(
                        Icons.file_copy, // File icon
                        color: select == 4 ? Colors.black : Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            select == 1
                ? Center(
              child: Text('images'),
            )
                : select == 2
                ? Center(
              child: Text('videos'),
            )
                : select == 3
                ? Center(
              child: Text('music'),
            )
                : select == 4
                ? Center(
              child: Text('files'),
            )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
