import 'package:flutter/material.dart';
import 'package:getx_mvvm/utils/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.height = 50,
      this.width = 100,
      required this.onPress,
      required this.title,
      this.loading = false,
      this.buttonColor = AppColors.buttonColor,
      this.textColor = AppColors.textColor});

  final bool loading;
  final double height, width;
  final VoidCallback onPress;
  final String title;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(40)),
        child: loading
            ? const CircularProgressIndicator()
            : Center(child: Text(title)),
      ),
    );
  }
}
