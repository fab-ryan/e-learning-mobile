import 'package:e_learing/views/screens/splash_screen.dart';
import 'package:get/get.dart';

class RouterHelper {
  static const String splashScreen = '/splash-screen';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen())
  ];
}
