import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_app/common/styles.dart';
import 'package:mvp_app/pages/splash/splash_controller.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SplashController());
    return Scaffold(
      backgroundColor: baseAppColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('SPLASH'),
          ],
        ),
      ),
    );
  }
}
