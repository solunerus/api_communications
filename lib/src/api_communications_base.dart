import 'dart:developer';

import 'package:api_communications/src/models/dio_action_data.dart';
import 'package:api_communications/src/singleton/single_data_connection.dart';
import 'package:api_communications/src/enums/http_method.dart';
import 'package:api_communications/src/error/app_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiCommunications {
  /// This function called `apiResponse` that sends a request using the `Dio`
  /// library based on the provided `DioActionData` instance.
  ///
  /// The function first logs the [headers], [path], and [dataToSend] for debugging
  /// purposes. It then creates an instance of the `Options` class with the headers
  /// and HTTP method from the `DioActionData` instance.
  ///
  /// The function then checks if the HTTP method is POST and sends a POST
  /// request using the `dio.post` method if it is, or sends a request using
  /// the `dio.request` method if it is not. Both of these methods accept the [path],
  /// [options], [onSendProgress], and [onReceiveProgress] arguments from the
  /// `DioActionData` instance.
  ///
  /// If an error occurs while sending the request, it is logged and an instance
  /// of the `AppExceptions` class is thrown. The `AppExceptions.fromError` method
  /// converts the error into an instance of the `AppExceptions` class.
  ///
  /// The function returns a Future that will resolve with the `Response` object
  /// from the `Dio` library when the request is successful, or throw an exception
  /// if there is an error.
  static Future<Response> _apiResponse(DioActionData dioActionData) async {
    try {
      log('Check Headers: ${dioActionData.headers}');
      log('Check Path: ${dioActionData.path}');
      log('Check dataToSend: ${dioActionData.dataToSend}');

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
      return dioActionData.httpMethod == HttpMethod.POST
          ? await dioActionData.dio.post(
              dioActionData.path,
              data: dioActionData.dataToSend,
              options: options,
              onSendProgress: dioActionData.onSendProgress,
              onReceiveProgress: dioActionData.onReceiveProgress,
            )
          : await dioActionData.dio.request(
              dioActionData.path,
              options: options,
              onSendProgress: dioActionData.onSendProgress,
              onReceiveProgress: dioActionData.onReceiveProgress,
            );
    } catch (e, s) {
      log('$e <==> $s');
      throw AppExceptions.fromError(e);
    }
  }

  static Future<Response> getResponse({
    required String path,
    required HttpMethod method,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? dataToSend,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    String? debugLabel,
  }) async {
    final dataConnection = SingleDataConnection.dataConnection;
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
        dataToSend: dataToSend,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      debugLabel: debugLabel,
    );
  }
}
