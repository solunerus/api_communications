class OtroCargo {
  OtroCargo({
    required this.aplico,
    required this.cancelo,
    required this.concepto,
    required this.estatus,
    required this.fechaAplicado,
    required this.fechaCancelo,
    required this.fechaGenero,
    required this.genero,
    required this.idCargo,
    required this.idCuenta,
    required this.idFactura,
    required this.idOrdenGenero,
    required this.idPadron,
    required this.iva,
    required this.letra,
    required this.observaA,
    required this.observaC,
    required this.subtotal,
    required this.sucursal,
    required this.total,
  });

  final String aplico;
  final String cancelo;
  final String concepto;
  final String estatus;
  final String fechaAplicado;
  final String fechaCancelo;
  final String fechaGenero;
  final String genero;
  final int idCargo;
  final String idCuenta;
  final String idFactura;
  final String idOrdenGenero;
  final int idPadron;
  final double iva;
  final String letra;
  final String observaA;
  final String observaC;
  final double subtotal;
  final String sucursal;
  final double total;

  OtroCargo copyWith({
    String? aplico,
    String? cancelo,
    String? concepto,
    String? estatus,
    String? fechaAplicado,
    String? fechaCancelo,
    String? fechaGenero,
    String? genero,
    int? idCargo,
    String? idCuenta,
    String? idFactura,
    String? idOrdenGenero,
    int? idPadron,
    double? iva,
    String? letra,
    String? observaA,
    String? observaC,
    double? subtotal,
    String? sucursal,
    double? total,
  }) =>
      OtroCargo(
        aplico: aplico ?? this.aplico,
        cancelo: cancelo ?? this.cancelo,
        concepto: concepto ?? this.concepto,
        estatus: estatus ?? this.estatus,
        fechaAplicado: fechaAplicado ?? this.fechaAplicado,
        fechaCancelo: fechaCancelo ?? this.fechaCancelo,
        fechaGenero: fechaGenero ?? this.fechaGenero,
        genero: genero ?? this.genero,
        idCargo: idCargo ?? this.idCargo,
        idCuenta: idCuenta ?? this.idCuenta,
        idFactura: idFactura ?? this.idFactura,
        idOrdenGenero: idOrdenGenero ?? this.idOrdenGenero,
        idPadron: idPadron ?? this.idPadron,
        iva: iva ?? this.iva,
        letra: letra ?? this.letra,
        observaA: observaA ?? this.observaA,
        observaC: observaC ?? this.observaC,
        subtotal: subtotal ?? this.subtotal,
        sucursal: sucursal ?? this.sucursal,
        total: total ?? this.total,
      );

  factory OtroCargo.fromJson(Map<String, dynamic> json) => OtroCargo(
        aplico: json["aplico"],
        cancelo: json["cancelo"],
        concepto: json["concepto"],
        estatus: json["estatus"],
        fechaAplicado: json["fecha_aplicado"],
        fechaCancelo: json["fecha_cancelo"],
        fechaGenero: json["fecha_genero"],
        genero: json["genero"],
        idCargo: json["id_cargo"],
        idCuenta: json["id_cuenta"].toString(),
        idFactura: json["id_factura"],
        idOrdenGenero: json["id_orden_genero"],
        idPadron: json["id_padron"],
        iva: json["iva"].toDouble(),
        letra: json["letra"],
        observaA: json["observa_a"],
        observaC: json["observa_c"],
        subtotal: json["subtotal"].toDouble(),
        sucursal: json["sucursal"],
        total: json["total"].toDouble(),
      );

  Map<String, dynamic> get toJson => {
        "aplico": aplico,
        "cancelo": cancelo,
        "concepto": concepto,
        "estatus": estatus,
        "fecha_aplicado": fechaAplicado,
        "fecha_cancelo": fechaCancelo,
        "fecha_genero": fechaGenero,
        "genero": genero,
        "id_cargo": idCargo,
        "id_cuenta": idCuenta,
        "id_factura": idFactura,
        "id_orden_genero": idOrdenGenero,
        "id_padron": idPadron,
        "iva": iva,
        "letra": letra,
        "observa_a": observaA,
        "observa_c": observaC,
        "subtotal": subtotal,
        "sucursal": sucursal,
        "total": total,
      };
}
