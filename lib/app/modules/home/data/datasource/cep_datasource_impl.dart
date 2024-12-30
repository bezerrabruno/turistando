import 'package:dio/dio.dart';
import 'package:turistando/app/core/gateway/rotas/rotas_api.dart';
import 'package:turistando/app/modules/home/data/interfaces/cep_datasource.dart';

class CepDatasourceImpl implements CepDatasource {
  final Dio dio;

  CepDatasourceImpl(this.dio);

  @override
  Future<Map> getInfo(String cep) async {
    try {
      final response = await dio.get(RotasApi.rotaCPF(cep));

      return response.data;
    } catch (e) {
      throw Exception('CepDatasource');
    }
  }
}
