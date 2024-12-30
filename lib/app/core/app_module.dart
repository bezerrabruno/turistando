import 'package:flutter_modular/flutter_modular.dart';
import 'package:turistando/app/modules/home/home_module.dart';
import 'package:turistando/app/modules/login/login_module.dart';
import 'package:turistando/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: SplashModule());
    r.module('/home', module: HomeModule());
    r.module('/login', module: LoginModule());
  }
}
