import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxlogin/app/widgets/splashscreen.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return GetMaterialApp(
              title: "Application",
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.LOGIN,
              getPages: AppPages.routes,
            );
          }
        });
  }
}
