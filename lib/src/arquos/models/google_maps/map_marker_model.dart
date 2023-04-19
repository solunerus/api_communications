class MapMarker {
  final String direccion;
  final String medidor;
  final String latitud;
  final String longitud;
  final String idCuenta;
  final String? idOrden;

  MapMarker({
    required this.direccion,
    required this.medidor,
    required this.latitud,
    required this.longitud,
    required this.idCuenta,
    this.idOrden,
  });

  factory MapMarker.fromJson(Map<String, dynamic> json) => MapMarker(
        direccion: json['direccion'],
        idOrden: json['id_orden'],
        medidor: json['medidor'],
        latitud: json['latitud'],
        longitud: json['longitud'],
        idCuenta: json['id_cuenta'],
      );

  factory MapMarker.getDefault() => MapMarker(
        direccion: '',
        medidor: '',
        latitud: '',
        longitud: '',
        idCuenta: '',
      );
  Map<String, dynamic> get toJson => {
        "direccion": direccion,
        "id_orden": idOrden,
        "medidor": medidor,
        "latitud": latitud,
        "longitud": longitud,
        "id_cuenta": idCuenta,
      };

  MapMarker copyWith({
    String? direccion,
    String? idOrden,
    String? medidor,
    String? latitud,
    String? longitud,
    String? idCuenta,
  }) =>
      MapMarker(
        direccion: direccion ?? this.direccion,
        idOrden: idOrden ?? this.idOrden,
        medidor: medidor ?? this.medidor,
        latitud: latitud ?? this.latitud,
        longitud: longitud ?? this.longitud,
        idCuenta: idCuenta ?? this.idCuenta,
      );
}
