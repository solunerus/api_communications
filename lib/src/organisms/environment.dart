// ignore_for_file: constant_identifier_names

import 'package:api_communications/src/enums/organisms.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

export 'package:api_communications/src/enums/organisms.dart';

/// This class is used to get the environment variables for each organism.
/// The environment variables are stored in a .env file.
class Environment {
  /// The name of the organism.
  final String name;

  /// The url of the api.
  final String urlApi;

  /// The rfc of the organism.
  final String rfc;

  /// The latitude of the organism.
  final double lat;

  /// The longitude of the organism.
  final double long;

  Environment({
    required this.name,
    required this.urlApi,
    required this.rfc,
    required this.lat,
    required this.long,
  });

  /// This method is auxiliar to get the environment variables for each organism.
  static Environment _getEnvironmentForOrganism({
    required String organismName,
    String? otherName,
    String? shortName,
    String? coordinatesName,
  }) {
    return Environment(
      name: otherName ?? organismName,
      urlApi: dotenv.get(
        'URL_API_$organismName',
        fallback: 'Not Found',
      ),
      rfc: dotenv.get(
        'RFC_${shortName ?? organismName}',
        fallback: 'Not Found',
      ),
      lat: double.parse(dotenv.get(
        'LAT_${coordinatesName ?? organismName}',
        fallback: '0.0',
      )),
      long: double.parse(dotenv.get(
        'LONG_${coordinatesName ?? organismName}',
        fallback: '0.0',
      )),
    );
  }

  /// This method is used to get the environment variables for each organism.
  static Future<Environment> getOrganisms(Organisms org) async {
    /// Load the .env file.
    await dotenv.load(
      fileName: '/Users/developer/developer/code/flutter/environment/.env',
    );

    /// Get the environment variables for each organism.
    switch (org) {
      /// NERUS VICTORIA
      case Organisms.NERUS_VICTORIA:
        return _getEnvironmentForOrganism(
          organismName: org.name,
          shortName: 'OROMAPAS',
          coordinatesName: 'OROMAPAS',
        );

      ///NERUS VALLES
      case Organisms.NERUS_VALLES:
        return _getEnvironmentForOrganism(
          organismName: org.name,
          shortName: 'OROMAPAS',
          coordinatesName: 'OROMAPAS',
        );

      ///OROMAPAS
      case Organisms.OROMAPAS:
        return _getEnvironmentForOrganism(
          organismName: org.name,
        );

      ///CMAP BANDERILLA
      case Organisms.CMAP_BANDERILLA:
        return _getEnvironmentForOrganism(
          organismName: org.name,
        );

      ///SIMAS SABINAS
      case Organisms.SIMAS_SABINAS:
        return _getEnvironmentForOrganism(
          organismName: org.name,
        );

      ///SIMAS ROSIITA
      case Organisms.SIMAS_ROSIITA:
        return _getEnvironmentForOrganism(
          organismName: org.name,
        );

      ///CAEV POZA RICA
      case Organisms.CAEV_POZA_RICA:
        return _getEnvironmentForOrganism(
          organismName: org.name,
          shortName: org.name.split('_').first,
        );

      ///CAEV ACAYUCAN
      case Organisms.CAEV_ACAYUCAN:
        return _getEnvironmentForOrganism(
          organismName: org.name,
          shortName: org.name.split('_').first,
        );

      ///CAPA
      case Organisms.CAPA_OPB:
      case Organisms.CAPA_BACALAR:
      case Organisms.CAPA_LAZAR:
      case Organisms.CAPA_TULUM:
        final capa = org.name.split('_').first;
        return _getEnvironmentForOrganism(
          organismName: org.name,
          otherName: capa,
          shortName: capa,
          coordinatesName: capa,
        );
    }
  }
}
