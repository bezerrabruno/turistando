import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:turistando/app/modules/home/data/datasource/cep_datasource_impl.dart';
import 'package:turistando/app/modules/home/data/interfaces/cep_datasource.dart';
import 'package:turistando/app/modules/home/data/repository/cep_repository_impl.dart';
import 'package:turistando/app/modules/home/logic/interfaces/cep_repository.dart';
import 'package:turistando/app/modules/home/logic/usecases/get_cep_info_usecase.dart';
import 'package:turistando/app/modules/home/ui/controller/home_controller.dart';
import 'package:turistando/app/modules/home/ui/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    /// packages
    i.addLazySingleton<Dio>(() => Dio());

    /// datasource
    i.addLazySingleton<CepDatasource>(CepDatasourceImpl.new);

    /// repository
    i.addLazySingleton<CepRepository>(CepRepositoryImpl.new);

    /// usecase
    i.addLazySingleton<GetCepInfoUsecase>(GetCepInfoUsecase.new);

    /// controller
    i.addLazySingleton<HomeController>(HomeController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (_) => HomePage(
        controller: Modular.get<HomeController>(),
      ),
    );
  }
}
