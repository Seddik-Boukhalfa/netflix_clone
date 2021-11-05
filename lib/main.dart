import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/Pages/pages.dart';
import 'package:netflix_clone/constants.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, oriention, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Netflix Clone',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: kPrimary,
          ),
          home: const NavigationScreen(),
        );
      },
    );
  }
}
