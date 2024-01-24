import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_mvvm/res/navigation/route_names.dart';

class SplashServices {
  void isLogin() {
    Timer(Duration(seconds: 3), () {
      Get.offAndToNamed(RouteName.loginScreen);
    });
  }
}
