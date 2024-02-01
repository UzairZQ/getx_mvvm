import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/view/login/widgets/input_email.dart';
import 'package:getx_mvvm/view/login/widgets/input_password.dart';
import 'package:getx_mvvm/view/login/widgets/login_button.dart';
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
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputEmailWidget(loginVM: loginVM),
             const SizedBox(
                height: 20,
              ),
              InputPasswordWidget(loginVM: loginVM),
             const SizedBox(
                height: 30,
              ),
              LoginButtonWidget(formKey: formKey, loginVM: loginVM)
            ],
          ),
        ),
      ),
    );
  }
}

