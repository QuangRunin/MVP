import 'package:get/get.dart';
import 'package:mvp_app/common/styles.dart';
import 'package:mvp_app/pages/splash/splash_binding.dart';
import 'package:mvp_app/pages/splash/splash_page.dart';

import 'app_routes.dart';

class AppPages {
  static var pages = [
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SplashPage(),
        binding: SplashBinding(),
        transition: Transition.topLevel,
        transitionDuration: const  Duration(milliseconds: timeDuration),
    ),
  ];
}
