import 'package:get/get.dart';
import 'package:getx_flutter_app/controllers/home_controller.dart';
import 'package:getx_flutter_app/services/services.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //adding dependencies
    Get.put(Services());
    //adding state
    Get.put(HomeController());
  }
}
