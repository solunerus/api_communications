class DataConnection {
  ///Name of App
  final String appName;

  ///Principal url
  final String urlApi;

  ///RFC of Organism
  final String rfc;

  /// Constructor
  DataConnection({
    required this.appName,
    required this.urlApi,
    required this.rfc,
  });

  /// [copyWith] is a method that returns a new instance of the `DataConnection`
  /// class with the same data as the current instance, but with the data
  /// provided in the arguments.
  ///
  /// [urlApi] is the url of the api.
  /// [rfc] is the rfc of the organism.
  /// [appName] is the name of the app. This is not necessary to provide it.
  DataConnection copyWith({String? urlApi, String? rfc}) => DataConnection(
        appName: appName,
        urlApi: urlApi ?? this.urlApi,
        rfc: rfc ?? this.rfc,
      );
}
