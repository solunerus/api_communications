class InvoiceRequest {
  InvoiceRequest({
    required this.emailUser,
    required this.codigoPostal,
    required this.estatus,
    required this.fechaInsert,
    required this.idClaveregimen,
    required this.idEstatus,
    required this.idRow,
    required this.idSolicita,
    required this.idUser,
    required this.idUsocfdi,
    required this.razonSocial,
    required this.regimen,
    required this.rfc,
    required this.total,
    required this.usoCfdi,
  });
  final String emailUser;
  final String codigoPostal;
  final String estatus;
  final String fechaInsert;
  final String idClaveregimen;
  final int idEstatus;
  final int idRow;
  final int idSolicita;
  final int idUser;
  final String idUsocfdi;
  final String razonSocial;
  final String regimen;
  final String rfc;
  final double total;
  final String usoCfdi;

  InvoiceRequest copyWith({
    String? emailUser,
    String? codigoPostal,
    String? estatus,
    String? fechaInsert,
    String? idClaveregimen,
    int? idEstatus,
    int? idRow,
    int? idSolicita,
    int? idUser,
    String? idUsocfdi,
    String? razonSocial,
    String? regimen,
    String? rfc,
    double? total,
    String? usoCfdi,
  }) =>
      InvoiceRequest(
        emailUser: emailUser ?? this.emailUser,
        codigoPostal: codigoPostal ?? this.codigoPostal,
        estatus: estatus ?? this.estatus,
        fechaInsert: fechaInsert ?? this.fechaInsert,
        idClaveregimen: idClaveregimen ?? this.idClaveregimen,
        idEstatus: idEstatus ?? this.idEstatus,
        idRow: idRow ?? this.idRow,
        idSolicita: idSolicita ?? this.idSolicita,
        idUser: idUser ?? this.idUser,
        idUsocfdi: idUsocfdi ?? this.idUsocfdi,
        razonSocial: razonSocial ?? this.razonSocial,
        regimen: regimen ?? this.regimen,
        rfc: rfc ?? this.rfc,
        total: total ?? this.total,
        usoCfdi: usoCfdi ?? this.usoCfdi,
      );

  factory InvoiceRequest.fromJson(Map<String, dynamic> json) => InvoiceRequest(
        emailUser: json["email_user"] ?? '',
        codigoPostal: json["codigo_postal"] ?? '',
        estatus: json["estatus"] ?? '',
        fechaInsert: json["fecha_insert"] ?? '',
        idClaveregimen: json["id_claveregimen"] ?? '',
        idEstatus: json["id_estatus"] ?? 0,
        idRow: json["id_row"] ?? 0,
        idSolicita: json["id_solicita"] ?? 0,
        idUser: json["id_user"] ?? 0,
        idUsocfdi: json["id_usocfdi"] ?? '',
        razonSocial: json["razon_social"] ?? '',
        regimen: json["regimen"] ?? '',
        rfc: json["rfc"] ?? '',
        total: json["total"] ?? 0.0,
        usoCfdi: json["uso_cfdi"] ?? '',
      );

  Map<String, dynamic> get toJson => {
        "email_user": emailUser,
        "codigo_postal": codigoPostal,
        "estatus": estatus,
        "fecha_insert": fechaInsert,
        "id_claveregimen": idClaveregimen,
        "id_estatus": idEstatus,
        "id_row": idRow,
        "id_solicita": idSolicita,
        "id_user": idUser,
        "id_usocfdi": idUsocfdi,
        "razon_social": razonSocial,
        "regimen": regimen,
        "rfc": rfc,
        "total": total,
        "uso_cfdi": usoCfdi,
      };
}
