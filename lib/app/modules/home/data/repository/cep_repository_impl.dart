import 'package:result_dart/result_dart.dart';
import 'package:turistando/app/modules/home/data/interfaces/cep_datasource.dart';
import 'package:turistando/app/modules/home/logic/interfaces/cep_repository.dart';
import 'package:turistando/app/modules/home/logic/models/cep_model.dart';

class CepRepositoryImpl implements CepRepository {
  final CepDatasource datasource;

  CepRepositoryImpl(this.datasource);

  @override
  Future<Result<CepModel, Exception>> getInfo(String cep) async {
    try {
      final result = await datasource.getInfo(cep);

      return Success(CepModel.fromMap(result));
    } catch (e) {
      if (e == 'CepDatasource') {
        rethrow;
      }

      return Failure(Exception('CepRepository'));
    }
  }
}
