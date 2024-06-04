import 'package:get/get.dart';
import 'package:metro_riders/utility/controller.dart';

class Tab1 extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => TabControllerRest());
  }

}