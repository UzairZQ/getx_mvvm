import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_models/login_view_model/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({
    super.key,
    required this.loginVM,
  });

  final LoginVM loginVM;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter password';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'password_hint'.tr,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

