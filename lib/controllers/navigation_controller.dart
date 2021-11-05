import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/Pages/home_page.dart';

class NavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  final List<Widget> screens = [
    const HomeScreen(
      key: PageStorageKey('HomeScreen'),
    ),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final Map<String, IconData> icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming soon': Icons.queue_play_next_rounded,
    'Downloads': Icons.download,
    'More': Icons.menu,
  };
}
