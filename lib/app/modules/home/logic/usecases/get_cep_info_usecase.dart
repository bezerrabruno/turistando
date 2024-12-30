import 'package:result_dart/result_dart.dart';
import 'package:turistando/app/modules/home/logic/interfaces/cep_repository.dart';
import 'package:turistando/app/modules/home/logic/models/cep_model.dart';

class GetCepInfoUsecase {
  final CepRepository reposiry;

  GetCepInfoUsecase(this.reposiry);

  Future<Result<CepModel, Exception>> call(String cep) async {
    return await reposiry.getInfo(cep);
  }
}
