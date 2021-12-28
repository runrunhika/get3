import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '1.dart';



class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => Get.offAll(Home()),
              child: Text("Go To Home"),
            )
          ],
        ),
      ),
    );
  }
}