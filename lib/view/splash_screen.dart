import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/exceptions.dart';
import 'package:getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        throw InternetException();
      }),
      body: Column(
        children: [
          InternetExceptionWidget(
            onPress: () {},
          ),
          RoundButton(onPress: () {}, title: 'Login')
        ],
      ),
    );
  }
}
