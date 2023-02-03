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
    if (error is DioError) return AppExceptions.fromDioError(error);
    return AppExceptions(
      code: "708",
      prefijo: "Unmanaged",
      descripcion: error.toString(),
      fechaInsert: AppTime.dateTimeNow(),
    );
  }

  /// [fromDioError] is a factory constructor that returns an instance of the
  factory AppExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return AppExceptions(
          code: "701",
          prefijo: "Connection timeout with API server",
          fechaInsert: AppTime.dateTimeNow(),
          descripcion: dioError.toString(),
        );
      case DioErrorType.sendTimeout:
        return AppExceptions(
            code: "702",
            prefijo: "Send timeout in connection with API server",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());
      case DioErrorType.receiveTimeout:
        return AppExceptions(
            code: "703",
            prefijo: "Receive timeout in connection with API server",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());
      case DioErrorType.response:
        final dioStatusCode = dioError.response!.statusCode;
        final dioData = dioError.response?.data;

        final prefijo = dioData is String
            ? dioData
            : dioData is Map
                ? dioData['data']['message']
                : dioData["status_message"] ?? dioError.error.toString();

        final apiStatusCode =
            dioData is Map ? dioData['data']['status_code'] : dioStatusCode;
        switch (dioStatusCode) {
          case 400:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Bad request",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());
          case 401:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Unauthorized",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());
          case 404:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Not found",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());

          case 500:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Internal server error",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());
          default:
            return AppExceptions(
                code: apiStatusCode.toString(),
                prefijo: prefijo ?? "Something went wrong",
                fechaInsert: AppTime.dateTimeNow(),
                descripcion: dioError.error.toString());
        }
      case DioErrorType.cancel:
        return AppExceptions(
            code: "705",
            prefijo: "Request to API server was cancelled",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());
      case DioErrorType.other:
        return AppExceptions(
            code: "706",
            prefijo:
                "Connection to API server failed due to internet connection",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.error.toString());
      default:
        return AppExceptions(
            code: "707",
            prefijo: "Something went wrong",
            fechaInsert: AppTime.dateTimeNow(),
            descripcion: dioError.toString());
    }
  }

  @override
  String toString() {
    return "$code-$prefijo|$descripcion At $fechaInsert";
  }
}
