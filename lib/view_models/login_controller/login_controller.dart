import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginVM extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emaiNode = FocusNode().obs;
  final passwordNode = FocusNode().obs;
}
