import 'package:result_dart/result_dart.dart';
import 'package:turistando/app/modules/home/logic/models/cep_model.dart';

abstract class CepRepository {
  Future<Result<CepModel, Exception>> getInfo(String cep);
}
