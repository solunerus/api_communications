import 'package:dio/dio.dart';

import '../models/data_connection.dart';

abstract class SingleDataConnection {
  /// Is data [APP_NAME], [URL_API], [RFC] needed for Connection to API
  static DataConnection? _dataConnection;

  /// Is data [Dio] needed for Connection to API
  static Dio? _dio;

  /// First use in main.dart, use if you need to change data
  static set dataConnection(DataConnection data) {
    _dio = _initAPI(data.urlApi);
    _dataConnection = data;
  }

  /// Use in all other files
  static DataConnection get dataConnection {
    /// If [_dataConnection] is not null, then return [_dataConnection]
    if (_dataConnection != null) return _dataConnection!;

    /// If [_dataConnection] is null, then throw Exception
    throw Exception('DataConnection not initialized in main.dart');
  }

  /// Get Dio instance
  static Dio get dio {
    /// If [_dio] is not null, then return [_dio]
    if (_dio != null) return _dio!;

    /// If [_dio] is null, then initialize [_dio]
    _dio = _initAPI(_dataConnection!.urlApi);

    /// Return [_dio]
    return _dio!;
  }

  /// Initialize Dio instance
  static Dio _initAPI(String urlApi) => Dio(
        BaseOptions(
            baseUrl: urlApi,
            // receiveDataWhenStatusError: true,
            connectTimeout: 120 * 1000, // 60 seconds
            receiveTimeout: 120 * 1000 // 60 seconds
            ),
      );
}
