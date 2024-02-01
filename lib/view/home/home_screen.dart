import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/res/components/general_exception.dart';
import 'package:getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_mvvm/res/navigation/route_names.dart';
import 'package:getx_mvvm/view_models/home_view_model/home_controller.dart';
import 'package:getx_mvvm/view_models/login_view_model/user_prefrences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserPrefrences userPrefrences = UserPrefrences();
  HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    homeController.userListApi();
    super.initState();
  }

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
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if (homeController.error.value == 'No internet') {
              return InternetExceptionWidget(onPress: () {
                homeController.userListApi();
              });
            } else {
              return GeneralExceptionWidget();
            }
          case Status.COMPLETED:
            return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  final userData = homeController.userList.value.data![index];
                  return Card(
                    child: ListTile(
                      title: Text(userData.firstName.toString()),
                      subtitle: Text(userData.email.toString()),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(userData.avatar!)),
                    ),
                  );
                });
        }
      }),
    );
  }
}
