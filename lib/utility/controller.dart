import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabControllerRest extends GetxController
    with GetSingleTickerProviderStateMixin {

   late TabController controller;


  @override
  void onInit() {
    controller = TabController(vsync: this, length: 2);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

}

class TabContainerModel {}