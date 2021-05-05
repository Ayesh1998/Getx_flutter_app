import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_app/bindings/home_binding.dart';
import 'package:getx_flutter_app/screens/about.dart';
import 'package:getx_flutter_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
          name: "/home",
          page: () => Home(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/about",
          page: () => About(),
        ),
      ],
      initialRoute: "/home",
    );
  }
}
