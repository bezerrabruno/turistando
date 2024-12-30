import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  SplashController() {
    navigateLogin();
  }

  navigateLogin() async {
    await Future.delayed(Duration(seconds: 2));

    Modular.to.navigate('/login');
  }
}
