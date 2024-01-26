import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm/data/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/view_models/login_view_model/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginVM loginVM = Get.put(LoginVM());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginVM.emailController.value,
              focusNode: loginVM.emaiNode.value,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter email';
                }
                return '';
              },
              decoration: InputDecoration(
                hintText: 'email_hint'.tr,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: loginVM.passwordController.value,
              focusNode: loginVM.passwordNode.value,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter password';
                }
                return '';
              },
              decoration: InputDecoration(
                hintText: 'password_hint'.tr,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Obx(() {
              return RoundButton(
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    loginVM.loginApi();
                  }
                },
                title: 'Login',
                loading: loginVM.loading.value,
              );
            })
          ],
        ),
      ),
    );
  }
}
