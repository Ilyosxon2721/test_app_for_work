import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app_for_work/routes/routes.dart';

import 'languages/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test App For Work',
      locale: Get.deviceLocale,
      translations: Languages(),
      fallbackLocale: const Locale('ru', 'RU'),
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.getHomeScreen(),
      getPages: Routes.routes,
    );
  }
}
