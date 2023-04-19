class Reporte {
  Reporte({
    required this.asunto,
    required this.atendio,
    required this.colonia,
    required this.correo,
    required this.estatus,
    required this.fechaAtendio,
    required this.fechaFinalizo,
    required this.fechaGenero,
    required this.finalizo,
    required this.genero,
    required this.causanoentrega,
    required this.idCuenta,
    required this.idFolio,
    required this.idPadron,
    required this.idTurno,
    required this.nombre,
    required this.observaA,
    required this.observaB,
    required this.telefono,
  });

  final String asunto;
  final String atendio;
  final String colonia;
  final String correo;
  final String estatus;
  final String fechaAtendio;
  final String fechaFinalizo;
  final String fechaGenero;
  final String finalizo;
  final String genero;
  final String causanoentrega;
  final String idCuenta;
  final String idFolio;
  final int idPadron;
  final int idTurno;
  final String nombre;
  final String observaA;
  final String observaB;
  final String telefono;

  Reporte copyWith({
    String? asunto,
    String? atendio,
    String? colonia,
    String? correo,
    String? estatus,
    String? fechaAtendio,
    String? fechaFinalizo,
    String? fechaGenero,
    String? finalizo,
    String? genero,
    String? causanoentrega,
    String? idCuenta,
    String? idFolio,
    int? idPadron,
    int? idTurno,
    String? nombre,
    String? observaA,
    String? observaB,
    String? telefono,
  }) =>
      Reporte(
        asunto: asunto ?? this.asunto,
        atendio: atendio ?? this.atendio,
        colonia: colonia ?? this.colonia,
        correo: correo ?? this.correo,
        estatus: estatus ?? this.estatus,
        fechaAtendio: fechaAtendio ?? this.fechaAtendio,
        fechaFinalizo: fechaFinalizo ?? this.fechaFinalizo,
        fechaGenero: fechaGenero ?? this.fechaGenero,
        finalizo: finalizo ?? this.finalizo,
        genero: genero ?? this.genero,
        causanoentrega: causanoentrega ?? this.causanoentrega,
        idCuenta: idCuenta ?? this.idCuenta,
        idFolio: idFolio ?? this.idFolio,
        idPadron: idPadron ?? this.idPadron,
        idTurno: idTurno ?? this.idTurno,
        nombre: nombre ?? this.nombre,
        observaA: observaA ?? this.observaA,
        observaB: observaB ?? this.observaB,
        telefono: telefono ?? this.telefono,
      );

  factory Reporte.fromJson(Map<String, dynamic> json) => Reporte(
        asunto: json["asunto"],
        atendio: json["atendio"],
        colonia: json["colonia"],
        correo: json["correo"],
        estatus: json["estatus"],
        fechaAtendio: json["fecha_atendio"],
        fechaFinalizo: json["fecha_finalizo"],
        fechaGenero: json["fecha_genero"],
        finalizo: json["finalizo"],
        genero: json["genero"],
        causanoentrega: json["causanoentrega"],
        idCuenta: json["id_cuenta"].toString(),
        idFolio: json["id_folio"],
        idPadron: json["id_padron"],
        idTurno: json["id_turno"],
        nombre: json["nombre"],
        observaA: json["observa_a"],
        observaB: json["observa_b"],
        telefono: json["telefono"],
      );

  Map<String, dynamic> get toJson => {
        "asunto": asunto,
        "atendio": atendio,
        "colonia": colonia,
        "correo": correo,
        "estatus": estatus,
        "fecha_atendio": fechaAtendio,
        "fecha_finalizo": fechaFinalizo,
        "fecha_genero": fechaGenero,
        "finalizo": finalizo,
        "genero": genero,
        "id_causanoentrega": causanoentrega,
        "id_cuenta": idCuenta,
        "id_folio": idFolio,
        "id_padron": idPadron,
        "id_turno": idTurno,
        "nombre": nombre,
        "observa_a": observaA,
        "observa_b": observaB,
        "telefono": telefono,
      };
}
