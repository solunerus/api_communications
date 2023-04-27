import 'dart:developer';

import 'package:api_communications/src/models/dio_action_data.dart';
import 'package:api_communications/src/singleton/single_data_connection.dart';
import 'package:api_communications/src/enums/http_method.dart';
import 'package:api_communications/src/error/app_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// The class [ApiCommunications] is a utility class that provides a method to
/// get a response from an API call. The method getResponse takes in various
/// parameters such as the [path], [HTTP method], [headers], [data to send],
/// and [progress callbacks]. The method then uses the provided data to make a
/// request using the [Dio library]. Before making the request, it logs the
/// headers, path, and data to send. The response is then returned in a Future
/// and processed in a separate isolate using the compute function.
/// The response is returned after checking for any errors and logging any
/// errors that occur.
class ApiCommunications {
  /// The method [_apiResponse] is a private method that is used to make the
  /// API call. It takes in a [DioActionData] object as a parameter. The
  /// [DioActionData] object contains the [Dio] instance, the [base URL], the
  /// [app name], the [RFC], the [path], the [HTTP method], the [headers], the
  /// [data to send], the [progress callbacks], and the [debug label].
  ///
  /// The method then uses the provided data to make a request using the [Dio]
  /// library. Before making the request, it logs the headers, path, and data
  /// to send.
  static Future<Response> _apiResponse(DioActionData dioActionData) async {
    try {
      _checkDataConnection(dioActionData);

      ///Options
      final options = Options(
        headers: {
          ...?dioActionData.headers,
          "app_name": dioActionData.appName,
          "rfc": dioActionData.rfc,
        },
        method: dioActionData.httpMethod.name,
      );

      ///Response
      switch (dioActionData.httpMethod) {
        case HttpMethod.GET:
          return await dioActionData.dio.request(
            dioActionData.path,
            options: options,
          );
        case HttpMethod.POST:
          return await dioActionData.dio.post(
            dioActionData.path,
            data: dioActionData.dataToSend,
            options: options,
          );
        case HttpMethod.PUT:
          return await dioActionData.dio.put(
            dioActionData.path,
            data: dioActionData.dataToSend,
            options: options,
          );
        case HttpMethod.PATCH:
          return await dioActionData.dio.patch(
            dioActionData.path,
            data: dioActionData.dataToSend,
            options: options,
          );
        case HttpMethod.DELETE:
          return await dioActionData.dio.delete(
            dioActionData.path,
            data: dioActionData.dataToSend,
            options: options,
          );
      }
    } catch (e, s) {
      log('$e <==> $s');
      throw AppExceptions.fromError(e);
    }
  }

  /// The method [getResponse] is a public method that is used to make the
  /// API call. It takes in various parameters such as the [path], [HTTP method],
  /// [headers], [data to send], and [progress callbacks]. The method then uses
  /// the provided data to make a request using the [Dio library]. Before making
  /// the request, it logs the headers, path, and data to send. The response is
  /// then returned in a Future and processed in a separate isolate using the
  /// compute function. The response is returned after checking for any errors
  /// and logging any errors that occur.
  static Future<Response> getResponse({
    required String path,
    required HttpMethod method,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? dataToSend,
    String? debugLabel,
  }) async {
    /// [dataConnection] is the sinleton of the [DataConnection] class.
    final dataConnection = SingleDataConnection.dataConnection;

    /// Isoolate
    return await compute<DioActionData, Response>(
      _apiResponse,
      DioActionData(
          dio: SingleDataConnection.dio,
          appName: dataConnection.appName,
          baseUrl: dataConnection.urlApi,
          rfc: dataConnection.rfc,
          path: path,
          httpMethod: method,
          headers: headers,
          dataToSend: dataToSend),
      debugLabel: debugLabel,
    );
  }

  static void _checkDataConnection(DioActionData data) {
    const name = "ApiCommunications";
    log('Check appName: ${data.appName}', name: name);
    log('Check baseUrl: ${data.baseUrl}', name: name);
    log('Check Path: ${data.path}', name: name);
    log('Check Headers: ${data.headers}', name: name);
    log('Check rfc: ${data.rfc}', name: name);
    log('Check dataToSend: ${data.dataToSend}', name: name);
  }
}
