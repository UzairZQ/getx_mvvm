import 'package:get/get.dart';
import 'package:getx_mvvm/res/navigation/route_names.dart';
import 'package:getx_mvvm/view/home/home_screen.dart';
import 'package:getx_mvvm/view/login/login_screen.dart';
import 'package:getx_mvvm/view/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.loginScreen,
            page: () => const LoginScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.homeScreen,
            page: () => const HomeScreen(),
            transition: Transition.leftToRightWithFade),
      ];
}
