import 'package:api_communications/api_communications.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final organism = await Environment.getOrganisms(Organisms.NERUS_VALLES);
  final api = organism.urlApi;
  final rfc = organism.rfc;

  SingleDataConnection.dataConnection = DataConnection(
    appName: 'TestApp',
    urlApi: api,
    rfc: rfc,
  );

  group('Check Test Package', () {
    test('Check Dio', () {
      expect(SingleDataConnection.dio, isNotNull);
    });

    test('Check DataConnection', () {
      expect(SingleDataConnection.dataConnection, isNotNull);
    });
  });
  group('Check Authentication', () {
    late final String token;
    test('Get Token', () async {
      final response = await ApiCommunications.getResponse(
        path: '/token/new',
        method: HttpMethod.POST,
        headers: {"device": "test"},
        dataToSend: {
          "device": "test",
          "name_app": SingleDataConnection.dataConnection.appName,
          "rfc": SingleDataConnection.dataConnection.rfc,
        },
        debugLabel: "getNewToken",
      );
      expect(response, isNotNull);
      expect(response.statusCode, 200);
      expect(response.data, isNotNull);
      expect(response.data['data']['request_token'], isNotNull);
      token = response.data['data']['request_token'];
    });

    test('Get Oficinas', () async {
      final response = await ApiCommunications.getResponse(
        path: '/oficinas',
        method: HttpMethod.GET,
        headers: {
          "device": "test",
          "token": token,
        },
        debugLabel: "getOficinas",
      );
      expect(response, isNotNull);
      expect(response.statusCode, 200);
      expect(response.data, isNotNull);
    });
  });
}
