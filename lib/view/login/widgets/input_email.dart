import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_models/login_view_model/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({
    super.key,
    required this.loginVM,
  });

  final LoginVM loginVM;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      focusNode: loginVM.emaiNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter email';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'email_hint'.tr,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
