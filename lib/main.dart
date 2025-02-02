import 'package:e_learing/constants/my_strings.dart';
import 'package:e_learing/core/theme/theme.dart';
import 'package:e_learing/core/utils/color.dart';
import 'package:e_learing/data/controller/common/them_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/dir_service/dir_service.dart' as dir_service;
import 'core/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dir_service.init();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: MyColor.textColor,
    statusBarColor: MyColor.green,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (theme) {
      return GetMaterialApp(
        title: MyStrings.title,
        initialRoute: RouterHelper.splashScreen,
        getPages: RouterHelper.routes,
        navigatorKey: Get.key,
        theme: dark,
        defaultTransition: Transition.topLevel,
        transitionDuration: const Duration(microseconds: 300),
      );
    });
  }
}
