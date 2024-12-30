import 'package:flutter_modular/flutter_modular.dart';
import 'package:turistando/app/modules/login/ui/controller/login_controller.dart';
import 'package:turistando/app/modules/login/ui/pages/login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<LoginController>(LoginController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (_) => LoginPage(
        controller: Modular.get<LoginController>(),
      ),
    );
  }
}
