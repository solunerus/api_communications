import 'package:api_communications/src/core/enums/http_method.dart';
import 'package:dio/dio.dart';

/// The class [DioActionData] is a class used to make requests over HTTP with
/// [Dio]. It holds information needed for the request such as the [dio] instance,
/// the [path] of the resource being requested, the [httpMethod] of the request
/// (e.g. GET, POST), and optional [headers], [dataToSend], and progress callbacks
/// for both sending and receiving.
///
/// It also holds the [baseUrl], [rfc], and [appName] values, which may be used
/// in constructing the full URL for the request. All of these parameters are
/// required when constructing an instance of this class, except for the headers,
/// data to send, and progress callbacks, which are optional and can be null.
class DioActionData {
  /// `dio` an instance of the `Dio` class that will be used to make the request.
  final Dio dio;

  /// `path` a `String` representing the path of the resource being requested.
  final String path;

  /// `httpMethod` an instance of the `HttpMethod` enum that represents the HTTP
  /// method to use for the request (e.g. GET, POST.).
  final HttpMethod httpMethod;

  /// `headers` a `Map` containing headers. This is optional and can be null.
  final Map<String, dynamic>? headers;

  /// `dataToSend` a `Map` containing data to send with the request. This is
  /// optional and can be null.
  final Map<String, dynamic>? dataToSend;

  final String baseUrl;

  final String rfc;

  final String appName;

  DioActionData({
    required this.dio,
    required this.path,
    required this.httpMethod,
    required this.baseUrl,
    required this.rfc,
    required this.appName,
    this.headers,
    this.dataToSend,
  });
}
