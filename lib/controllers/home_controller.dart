import 'package:get/get.dart';

//global states
class HomeController extends GetxController {
  var count = 0.obs;

  increaseCount() {
    count++;
  }
}
