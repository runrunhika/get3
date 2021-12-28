import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Fourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page4"),
      ),
      body: Center(
        child: (Get.arguments != null)
            ? Text(Get.arguments)
            : Column(
                children: <Widget>[
                  TextButton(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Return Text",
                        ),
                        TextSpan(
                            text: "Hello",
                            style: TextStyle(fontSize: 40, color: Colors.red)),
                      ]),
                    ),
                    onPressed: () {
                      Get.back(result: "Hello");
                    },
                  ),
                  TextButton(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Return Text",
                        ),
                        TextSpan(
                            text: "World",
                            style: TextStyle(fontSize: 40, color: Colors.red)),
                      ]),
                    ),
                    onPressed: () {
                      Get.back(result: "World");
                    },
                  )
                ],
              ),
      ),
    );
  }
}
