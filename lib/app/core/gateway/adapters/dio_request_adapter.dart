import 'package:dio/dio.dart';
import 'package:turistando/app/core/gateway/adapters/interfaces/api_request_adapter.dart';

class DioApiRequestAdapter implements ApiRequestAdapter {
  final Dio _dio;

  DioApiRequestAdapter(this._dio);

  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        options: Options(
          receiveDataWhenStatusError: true,
        ),
        queryParameters: queryParameters,
        data: data,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(
        path,
        options: Options(
          followRedirects: false,
        ),
        queryParameters: queryParameters,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> patch(
    String path,
    dynamic data, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.patch(
        path,
        options: Options(
          receiveDataWhenStatusError: true,
        ),
        queryParameters: queryParameters,
        data: data,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> post(
    String path,
    dynamic data, {
    List<Map<String, dynamic>>? dataList,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.post(
        path,
        options: Options(
          receiveDataWhenStatusError: true,
        ),
        queryParameters: queryParameters,
        data: dataList ?? data,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> put(
    String path,
    dynamic data, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.put(
        path,
        options: Options(
          receiveDataWhenStatusError: true,
        ),
        queryParameters: queryParameters,
        data: data,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
