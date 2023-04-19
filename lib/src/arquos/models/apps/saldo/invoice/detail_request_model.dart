class DetailRequest {
  DetailRequest({
    required this.fecha,
    required this.idCuenta,
    required this.idFolio,
    required this.idRow,
    required this.idTipomovto,
    required this.total,
    this.idSolicita,
  });

  final String fecha;
  final String idCuenta;
  final String idFolio;
  final int idRow;
  final int idTipomovto;
  final double total;
  final int? idSolicita;

  ///Atributo cambiante solo utilizado en la tabla
  ///```
  /// /cfdi_request/local_widgets/detail_data_sources.dart
  ///```
  bool selected = false;

  DetailRequest copyWith({
    String? fecha,
    String? idCuenta,
    String? idFolio,
    int? idRow,
    int? idTipomovto,
    double? total,
    int? idSolicita,
  }) =>
      DetailRequest(
        fecha: fecha ?? this.fecha,
        idCuenta: idCuenta ?? this.idCuenta,
        idFolio: idFolio ?? this.idFolio,
        idRow: idRow ?? this.idRow,
        idTipomovto: idTipomovto ?? this.idTipomovto,
        total: total ?? this.total,
        idSolicita: idSolicita ?? this.idSolicita,
      );

  factory DetailRequest.fromJson(Map<String, dynamic> json) => DetailRequest(
        fecha: json["fecha"],
        idCuenta: json["id_cuenta"],
        idFolio: json["id_folio"],
        idRow: json["id_row"],
        idTipomovto: json["id_tipomovto"],
        total: json["total"],
        idSolicita: json["id_solicita"],
      );

  Map<String, dynamic> get toJson => {
        "fecha": fecha,
        "id_cuenta": idCuenta,
        "id_folio": idFolio,
        "id_row": idRow,
        "id_tipomovto": idTipomovto,
        "total": total,
        "id_solicita": idSolicita,
      };
}
