import 'package:api_communications/src/enums/http_method.dart';
import 'package:dio/dio.dart';

///This class called `DioActionData` that represents data that can be used to
///make a request using the `Dio` library.
///
/// The `DioActionData` class has six instance variables:
///
/// `dio` an instance of the `Dio` class that will be used to make the request.
///
/// `path` a `String` representing the path of the resource being requested.
///
/// `httpMethod` an instance of the `HttpMethod` enum that represents the HTTP
/// method to use for the request (e.g. GET, POST.).
///
/// `headers` a `Map` containing headers. This is optional and can be null.
///
/// `dataToSend` a `Map` containing data to send with the request. This is
/// optional and can be null.
///
/// `onSendProgress` a callback function that will be called with progress
/// updates when sending the request. This is optional and can be null.
///
/// `onReceiveProgress` a callback function that will be called with progress
/// updates when receiving the response. This is optional and can be null.
///
/// The class has a single constructor that initializes these instance
/// variables. The required keyword indicates that these arguments are required
///  and must be provided when creating an instance of the `DioActionData` class.
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

  /// `onSendProgress` a callback function that will be called with progress
  /// updates when sending the request. This is optional and can be null.
  final ProgressCallback? onSendProgress;

  /// `onReceiveProgress` a callback function that will be called with progress
  /// updates when receiving the response. This is optional and can be null.
  final ProgressCallback? onReceiveProgress;

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
    this.onSendProgress,
    this.onReceiveProgress,
  });
}
