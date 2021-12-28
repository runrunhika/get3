import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '3.dart';
import '4.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String dataFromFourth = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("Go to Third and remove this screen from stack"),
              onPressed: () => Get.off(Third()),
            ),
            TextButton(
              child: Text("Go To Third and remove everything from stack"),
              onPressed: () => Get.offAll(Third()),
            ),
            SizedBox(
              height: 100,
            ),
            // Text("Data From Fourth Screen: " + dataFromFourth),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Data From Fourth Screen: ",
                ),
                TextSpan(
                    text: dataFromFourth,
                    style: TextStyle(fontSize: 40, color: Colors.red)),
              ]),
            ),
            TextButton(
              child: Text("Return Data from Fourth Screen"),
              onPressed: () async {
                dataFromFourth = await Get.to(Fourth());
                setState(() {});
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
                child: Text("Go to Named /fourth with parameter"),
                onPressed: () {
                  Get.toNamed("/fourth", arguments: "Passed From Second");
                }),
          ],
        ),
      ),
    );
  }
}
