class Prorroga {
  Prorroga({
    required this.cancelo,
    required this.dias,
    required this.estatus,
    required this.fechaCancelo,
    required this.fechaPago,
    required this.fechaRegistro,
    required this.fechaVence,
    required this.idCuenta,
    required this.idPadron,
    required this.idProrroga,
    required this.importePago,
    required this.inactivo,
    required this.observaA,
    required this.operador,
  });

  final String cancelo;
  final int dias;
  final String estatus;
  final String fechaCancelo;
  final String fechaPago;
  final String fechaRegistro;
  final String fechaVence;
  final String idCuenta;
  final int idPadron;
  final int idProrroga;
  final double importePago;
  final bool inactivo;
  final String observaA;
  final String operador;

  Prorroga copyWith({
    String? cancelo,
    int? dias,
    String? estatus,
    String? fechaCancelo,
    String? fechaPago,
    String? fechaRegistro,
    String? fechaVence,
    String? idCuenta,
    int? idPadron,
    int? idProrroga,
    double? importePago,
    bool? inactivo,
    String? observaA,
    String? operador,
  }) =>
      Prorroga(
        cancelo: cancelo ?? this.cancelo,
        dias: dias ?? this.dias,
        estatus: estatus ?? this.estatus,
        fechaCancelo: fechaCancelo ?? this.fechaCancelo,
        fechaPago: fechaPago ?? this.fechaPago,
        fechaRegistro: fechaRegistro ?? this.fechaRegistro,
        fechaVence: fechaVence ?? this.fechaVence,
        idCuenta: idCuenta ?? this.idCuenta,
        idPadron: idPadron ?? this.idPadron,
        idProrroga: idProrroga ?? this.idProrroga,
        importePago: importePago ?? this.importePago,
        inactivo: inactivo ?? this.inactivo,
        observaA: observaA ?? this.observaA,
        operador: operador ?? this.operador,
      );

  factory Prorroga.fromJson(Map<String, dynamic> json) => Prorroga(
        cancelo: json["cancelo"],
        dias: json["dias"],
        estatus: json["estatus"],
        fechaCancelo: json["fecha_cancelo"],
        fechaPago: json["fecha_pago"],
        fechaRegistro: json["fecha_registro"],
        fechaVence: json["fecha_vence"],
        idCuenta: json["id_cuenta"].toString(),
        idPadron: json["id_padron"],
        idProrroga: json["id_prorroga"],
        importePago: json["importe_pago"],
        inactivo: json["inactivo"],
        observaA: json["observa_a"],
        operador: json["operador"],
      );

  Map<String, dynamic> get toJson => {
        "cancelo": cancelo,
        "dias": dias,
        "estatus": estatus,
        "fecha_cancelo": fechaCancelo,
        "fecha_pago": fechaPago,
        "fecha_registro": fechaRegistro,
        "fecha_vence": fechaVence,
        "id_cuenta": idCuenta,
        "id_padron": idPadron,
        "id_prorroga": idProrroga,
        "importe_pago": importePago,
        "inactivo": inactivo,
        "observa_a": observaA,
        "operador": operador,
      };
}
