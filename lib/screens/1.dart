import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '2.dart';

class Home extends StatelessWidget {
  goToNext() {
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
    // navigator.push(MaterialPageRoute(builder: (context) => Second()));
    Get.to(Second());
  }

  _showSnackBar() {
    Get.snackbar(
      "Getx SnacBar",
      "Hello World",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title: "Simple Dialog",
      content: Text("Too Easy"),
      onCancel: () => navigator!.pop(),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                trailing: Icon(Icons.opacity_sharp),
                onTap: () => {}),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => {},
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              child: Text("Go To Second"),
              onPressed: () => goToNext(),
            ),
            OutlinedButton(
              child: Text("Snackbar"),
              onPressed: _showSnackBar,
            ),
            OutlinedButton(
              child: Text("Dialog"),
              onPressed: _showDialog,
            ),
            OutlinedButton(
              child: Text("Bottom Sheet"),
              onPressed: _showBottomSheet,
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
              child: Text("Name Route: /second"),
              onPressed: () {
                Get.toNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}
