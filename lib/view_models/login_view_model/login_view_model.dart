import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/model/login/user_model.dart';
import 'package:getx_mvvm/res/navigation/route_names.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/login_view_model/user_prefrences.dart';

class LoginVM extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emaiNode = FocusNode().obs;
  final passwordNode = FocusNode().obs;
  UserPrefrences userPrefrences = UserPrefrences();

  final RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };

    _api.loginApi(data).then((value) {
      loading.value = false;

      Utils.showToastMessage('Logged In Successfully');
      UserModel userModel = UserModel(token: value['token'], isLogin: true);
      userPrefrences.saveUser(userModel);
      Get.toNamed(RouteName.homeScreen);
    }).onError((error, stackTrace) {
      loading.value = false;
      print(error);
      Utils.showSnackBar('Error', error.toString());
    });
  }
}
