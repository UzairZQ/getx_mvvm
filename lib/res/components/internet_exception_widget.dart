import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm/utils/app_colors.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key, required this.onPress});
  final VoidCallback onPress;

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Icon(
              Icons.cloud_off,
              color: AppColors.redColor,
              size: 30.0,
            ),
            Text('internet_exception'.tr),
            SizedBox(
              height: height * 0.15,
            ),
            ElevatedButton(
                onPressed: widget.onPress, child: const Text('Retry'))
          ],
        ),
      ),
    );
  }
}
