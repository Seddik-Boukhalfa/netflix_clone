import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ScrollController? scrollController;
  double scrollOffset = 0.0;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()
      ..addListener(() {
        scrollOffset = scrollController!.offset;
        update();
      });
  }

  @override
  void onClose() {
    super.onClose();
    scrollController!.dispose();
  }
}
