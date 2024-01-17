import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utils/app_colors.dart';

class Utils {
  static changeFocus(
      BuildContext context, FocusNode currentNode, FocusNode nextNode) {
    FocusScope.of(context).requestFocus(nextNode);
  }

  static showToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.blackColor,
        gravity: ToastGravity.BOTTOM,
        textColor: AppColors.whiteColor);
  }

  static showSnackBar(String message, String title) {
    Get.showSnackbar(GetSnackBar(
      title: title,
      message: message,
    ));
  }
}
