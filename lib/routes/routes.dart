import 'package:get/get.dart';

import '../screens/home_screen.dart';

class Routes {
  static String home = '/';

  static String getHomeScreen() => home;

  static List<GetPage> routes = [
    GetPage(
        name: home,
        page: () => const HomeScreen(),
        transition: Transition.size,
        transitionDuration: const Duration(milliseconds: 500)),
  ];
}
