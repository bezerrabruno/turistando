import 'package:flutter_modular/flutter_modular.dart';
import 'package:turistando/app/modules/splash/ui/controller/splash_controller.dart';
import 'package:turistando/app/modules/splash/ui/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<SplashController>(SplashController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (_) => SplashPage(),
    );
  }
}
