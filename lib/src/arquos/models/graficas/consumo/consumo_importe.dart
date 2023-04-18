class ConsumoImporte {
  ConsumoImporte({
    required this.af,
    required this.anomalia,
    required this.calculo,
    required this.consumos,
    required this.ctas,
    required this.estatus,
    required this.fecha,
    required this.fechaFact,
    required this.idFactura,
    required this.importes,
    required this.lectura,
    required this.mf,
    required this.observa,
    required this.renglon,
  });

  final int af;
  final String anomalia;
  final String calculo;
  final int consumos;
  final int ctas;
  final String estatus;
  final String fecha;
  final String fechaFact;
  final String idFactura;
  final double importes;
  final int lectura;
  final int mf;
  final String observa;
  final int renglon;

  ConsumoImporte copyWith({
    int? af,
    String? anomalia,
    String? calculo,
    int? consumos,
    int? ctas,
    String? estatus,
    String? fecha,
    String? fechaFact,
    String? idFactura,
    double? importes,
    int? lectura,
    int? mf,
    String? observa,
    int? renglon,
  }) =>
      ConsumoImporte(
        af: af ?? this.af,
        anomalia: anomalia ?? this.anomalia,
        calculo: calculo ?? this.calculo,
        consumos: consumos ?? this.consumos,
        ctas: ctas ?? this.ctas,
        estatus: estatus ?? this.estatus,
        fecha: fecha ?? this.fecha,
        fechaFact: fechaFact ?? this.fechaFact,
        idFactura: idFactura ?? this.idFactura,
        importes: importes ?? this.importes,
        lectura: lectura ?? this.lectura,
        mf: mf ?? this.mf,
        observa: observa ?? this.observa,
        renglon: renglon ?? this.renglon,
      );

  factory ConsumoImporte.fromJson(Map<String, dynamic> json) => ConsumoImporte(
        af: json["af"],
        anomalia: json["anomalia"],
        calculo: json["calculo"],
        consumos: json["consumos"],
        ctas: json["ctas"],
        estatus: json["estatus"],
        fecha: json["fecha"],
        fechaFact: json["fecha_fact"],
        idFactura: json["id_factura"],
        importes: json["importes"].toDouble(),
        lectura: json["lectura"],
        mf: json["mf"],
        observa: json["observa"],
        renglon: json["renglon"],
      );

  Map<String, dynamic> get toJson => {
        "af": af,
        "anomalia": anomalia,
        "calculo": calculo,
        "consumos": consumos,
        "ctas": ctas,
        "estatus": estatus,
        "fecha": fecha,
        "fecha_fact": fechaFact,
        "id_factura": idFactura,
        "importes": importes,
        "lectura": lectura,
        "mf": mf,
        "observa": observa,
        "renglon": renglon,
      };
}
