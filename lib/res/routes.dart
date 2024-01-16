import 'package:get/get.dart';
import 'package:getx_mvvm/res/route_names.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade)
      ];
  //       GetPage(
  //       name: RouteName.loginScreen,
  //       page: () => const LoginScreen(),
  //       transition: Transition.leftToRightWithFade),
  // ];
}
