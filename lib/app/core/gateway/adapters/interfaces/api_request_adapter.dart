abstract class ApiRequestAdapter {
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> patch(
    String path,
    Map<String, dynamic>? data, {
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> post(
    String path,
    Map<String, dynamic>? data, {
    List<Map<String, dynamic>>? dataList,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> put(
    String path,
    Map<String, dynamic>? data, {
    Map<String, dynamic>? queryParameters,
  });
}
