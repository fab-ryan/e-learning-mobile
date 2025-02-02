import 'package:e_learing/core/utils/color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: MyColor.hintTextColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'hello',
                selectionColor: MyColor.green,
                style: TextStyle(color: MyColor.hintTextColor2),
              )
            ],
          ),
        )));
  }
}
