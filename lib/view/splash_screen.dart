import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm/data/exceptions.dart';
import 'package:getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/view_models/splash_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SplashServices splashServices = SplashServices();
    splashServices.isLogin();
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Center(
        child: Text('welcome'.tr),
      ),
    );
  }
}
