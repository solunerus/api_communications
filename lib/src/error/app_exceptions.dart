import 'dart:developer';

import 'package:api_communications/src/helpers/app_time.dart';
import 'package:dio/dio.dart';

class AppExceptions implements Exception {
  /// [descripcion] is the description of the error.
  final String descripcion;

  /// [fechaInsert] is the date and time when the error occurred.
  final String fechaInsert;

  /// [code] is the code of the error.
  final String code;

  /// [prefijo] is the prefix of the error.
  final String prefijo;

  AppExceptions({
    required this.code,
    required this.prefijo,
    required this.descripcion,
    required this.fechaInsert,
  });

  /// [toJson] is a method that returns a `Map` containing the data of the
  Map<String, dynamic> get toJson => {
        "descripcion": descripcion,
        "fecha_insert": fechaInsert,
        "prefijo": prefijo,
        "code": code,
      };

  /// [copyWith] is a method that returns a new instance of the `AppExceptions`
  /// class with the same data as the current instance, but with the data
  /// provided in the arguments.
  AppExceptions copyWith({
    String? descripcion,
    String? fechaInsert,
    String? code,
    String? prefijo,
  }) =>
      AppExceptions(
        descripcion: descripcion ?? this.descripcion,
        fechaInsert: fechaInsert ?? this.fechaInsert,
        code: code ?? this.code,
        prefijo: prefijo ?? this.prefijo,
      );

  /// [fromError] is a factory constructor that returns an instance of the
  factory AppExceptions.fromJson(Map<String, dynamic> json) => AppExceptions(
        code: json['code'],
        prefijo: json['prefijo'],
        descripcion: json['descripcion'],
        fechaInsert: json['fecha_insert'],
      );

  /// [fromError] is a factory constructor that returns an instance of the
  factory AppExceptions.fromError(dynamic error) {
    log('AppExceptions: $error');

    /// [DioError] is a class that represents an error that occurs while
    /// sending or receiving a request.
    if (error is DioError) return AppExceptions.fromDioError(error);

    /// Return an instance of the `AppExceptions` class with the data
    /// Unmanaged error.
    return AppExceptions(
      code: "708",
      prefijo: "Unmanaged",
      descripcion: error.toString(),
      fechaInsert: AppTime.dateTimeNow(),
    );
  }

  /// [fromDioError] is a factory constructor that returns an instance of the
  factory AppExceptions.fromDioError(DioError dioError) {
    /// [DioErrorType] is an enum that represents the type of error that
    /// occurred.
    switch (dioError.type) {
      /// [DioErrorType.connectTimeout] is an error that occurs when the
      /// connection times out.
      case DioErrorType.connectTimeout:
        return AppExceptions(
          code: "701",
          prefijo: "Connection timeout with API server",
          fechaInsert: AppTime.dateTimeNow(),
          descripcion: dioError.toString(),
        );

      /// [DioErrorType.sendTimeout] is an error that occurs when the
      /// sending times out.
      case DioErrorType.sendTimeout:
        return AppExceptions(
            code: "702",
            prefijo: "Send timeout in connection with API server",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());

      /// [DioErrorType.receiveTimeout] is an error that occurs when the
      /// receiving times out.
      case DioErrorType.receiveTimeout:
        return AppExceptions(
            code: "703",
            prefijo: "Receive timeout in connection with API server",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());

      /// [DioErrorType.response] is an error that occurs when the
      /// response is not successful.
      case DioErrorType.response:

        /// [dioStatusCode] is the status code of the response.
        final dioStatusCode = dioError.response!.statusCode;

        /// [dioData] is the data of the response.
        final dioData = dioError.response?.data;

        /// [prefijo] is the prefix of the error.
        final prefijo = dioData is String

            /// If the data is a `String`, then the prefix is the data.
            ? dioData

            /// If the data is a `Map`, then the prefix is the value of the
            /// `message` key.
            : dioData is Map
                ? dioData['data']['message']

                /// If the data is not a `String` or a `Map`, then the prefix
                /// is the status message.
                : dioData["status_message"]

                    /// If the `status_message` key does not exist, then the prefix
                    /// is the error.
                    ??
                    dioError.error.toString();

        /// [apiStatusCode] is the status code of the response.
        final apiStatusCode =

            /// If the data is a `Map`, then the status code is the value of the
            /// `status_code` key.
            dioData is Map
                ? dioData['data']['status_code']

                /// If the data is not a `Map`, then the status code is the
                /// status code of the response.
                : dioStatusCode;

        switch (dioStatusCode) {
          /// [400] is the status code of the response when the request is
          /// incorrect.
          ///
          /// Return Bad request.
          case 400:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Bad request",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());

          /// [401] is the status code of the response when the request is
          /// unauthorized.
          case 401:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Unauthorized",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());

          /// [404] is the status code of the response when the request is
          /// not found.
          case 404:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Not found",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());

          /// [500] is the status code of the response when the request is
          /// internal server error.
          case 500:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Internal server error",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());

          /// `default` is the status code of the response when the request is
          /// unknown.
          default:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Something went wrong",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());
        }

      /// [DioErrorType.cancel] is an error that occurs when the
      /// request is cancelled.
      case DioErrorType.cancel:
        return AppExceptions(
            code: "705",
            prefijo: "Request to API server was cancelled",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());

      /// [DioErrorType.other] is an error that occurs when the
      /// request is not successful.
      case DioErrorType.other:
        return AppExceptions(
            code: "706",
            prefijo:
                "Connection to API server failed due to internet connection",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.error.toString());

      /// `default` is the status code of the response when the request is
      /// unknown.
      default:
        return AppExceptions(
            code: "707",
            prefijo: "Something went wrong",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());
    }
  }

  /// [toString] is a method that returns a string representation of the
  /// object.
  ///
  /// The string representation of the object is the code, the prefix, the
  /// description and the date of the error.
  /// ```dart
  /// "$code-$prefix|$description At $fechaInsert"
  /// ///Example
  /// "404-Not found|Not found At 2021-07-01 12:00:00"
  /// ```
  @override
  String toString() {
    return "$code-$prefijo|$descripcion At $fechaInsert";
  }
}
