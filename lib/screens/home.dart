import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_app/controllers/home_controller.dart';
import 'package:getx_flutter_app/services/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //moved these to home_binding
    // //adding dependencies
    // final services = Get.put(Services());
    // //adding state
    // final homeState = Get.put(HomeController());

    //use this way after adding to bindings
    final homeState = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Obx(() => Text("${homeState.count}")),
            FlatButton(
              onPressed: () {
                homeState.increaseCount();

                // //how other easy utilities use in get.
                // Get.defaultDialog(title: "Get dialog");
              },
              color: Colors.blue,
              child: Text(
                'Increase',
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () {
                Get.toNamed("/about");
                // print(services.showAppName());
              },
              color: Colors.blue,
              child: Text(
                'Next Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        width: double.infinity,
      ),
    );
  }
}
