import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_app/controllers/home_controller.dart';
import 'package:getx_flutter_app/services/services.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //get dependencies under a parent
    final services = Get.find<Services>();

    //get states under a parent
    final homeState = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text('About'),
            FlatButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                'Aboutttt',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
