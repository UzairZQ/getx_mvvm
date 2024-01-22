import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm/utils/app_colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget({super.key});

  @override
  State<GeneralExceptionWidget> createState() =>
      _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColors.redColor,
            size: 30.0,
          ),
          Text('general_exception'.tr),
          SizedBox(
            height: height * 0.15,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Retry'))
        ],
      ),
    );
  }
}
