import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:netflix_clone/constants.dart';
import 'package:netflix_clone/controllers/navigation_controller.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) => Obx(
        () => Scaffold(
          body: controller.screens[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: kPrimary,
            type: BottomNavigationBarType.fixed,
            items: controller.icons
                .map(
                  (title, icon) => MapEntry(
                    title,
                    BottomNavigationBarItem(
                      icon: Icon(icon, size: 30.0),
                      label: title,
                    ),
                  ),
                )
                .values
                .toList(),
            currentIndex: controller.currentIndex.value,
            selectedItemColor: kWhite,
            selectedFontSize: 11.0,
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 11.0,
            onTap: (index) => controller.currentIndex.value = index,
          ),
        ),
      ),
    );
  }
}
