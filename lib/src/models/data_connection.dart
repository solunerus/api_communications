class DataConnection {
  ///Name of App
  final String appName;

  ///Principal url
  final String urlApi;

  ///RFC of Organism
  final String rfc;

  DataConnection({
    required this.appName,
    required this.urlApi,
    required this.rfc,
  });

  DataConnection copyWith({String? urlApi, String? rfc}) => DataConnection(
        appName: appName,
        urlApi: urlApi ?? this.urlApi,
        rfc: rfc ?? this.rfc,
      );
}
