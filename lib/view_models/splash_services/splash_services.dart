import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_mvvm/res/navigation/route_names.dart';
import 'package:getx_mvvm/view_models/login_view_model/user_prefrences.dart';

class SplashServices {
  UserPrefrences userPrefrences = UserPrefrences();
  void isLogin() {
    userPrefrences.getUser().then((value) {
      print(value.isLogin);
      if (value.isLogin == false || value.isLogin == null) {
        Timer(Duration(seconds: 3), () {
          Get.offAndToNamed(RouteName.loginScreen);
        });
      } else {
        Timer(Duration(seconds: 3), () {
          Get.offAndToNamed(RouteName.homeScreen);
        });
      }
    });
  }
}
