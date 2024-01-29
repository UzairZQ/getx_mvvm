import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/navigation/route_names.dart';
import 'package:getx_mvvm/view_models/login_view_model/user_prefrences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserPrefrences userPrefrences = UserPrefrences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        actions: [
          IconButton(
              onPressed: () {
                userPrefrences.removeUser();
                Get.toNamed(RouteName.loginScreen);
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
