import 'package:e_learing/constants/my_strings.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController implements GetxService {
  final SharedPreferences sharedPreferences;
  bool _darkTheme = true;
  bool get darkTheme => _darkTheme;

  ThemeController({required this.sharedPreferences}) {
    _loadCurrentTheme();
  }

  void _loadCurrentTheme() {
    String? themeString = sharedPreferences.getString(MyStrings.themeKey);

    _darkTheme =
        themeString != null ? themeString.toLowerCase() == 'true' : false;

    update();
  }

  void toggTheme() {
    _darkTheme = !_darkTheme;
    sharedPreferences.setString(MyStrings.themeKey, _darkTheme.toString());
    update();
  }
}
