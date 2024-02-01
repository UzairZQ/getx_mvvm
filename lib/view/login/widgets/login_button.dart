import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/view_models/login_view_model/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.formKey,
    required this.loginVM,
  });

  final GlobalKey<FormState> formKey;
  final LoginVM loginVM;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return RoundButton(
        onPress: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            loginVM.loginApi();
          }
        },
        title: 'Login',
        loading: loginVM.loading.value,
      );
    });
  }
}

