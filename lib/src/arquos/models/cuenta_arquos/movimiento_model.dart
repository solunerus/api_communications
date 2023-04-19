class Movimiento {
  Movimiento({
    required this.idPadron,
    required this.abono,
    required this.anomaliaAct,
    required this.cargo,
    required this.consumoAct,
    required this.descripcion,
    required this.esCfdi,
    required this.estatus,
    required this.fecha,
    required this.folio,
    required this.idEstatus,
    required this.idTipomovto,
    required this.lecturaAct,
    required this.lecturaAnt,
    required this.observacion,
    required this.operacion,
    required this.periodo,
    required this.promedioAct,
    required this.quien,
    required this.saldo,
    required this.sucursal,
  });

  final int idPadron;
  final double abono;
  final String anomaliaAct;
  final double cargo;
  final int consumoAct;
  final String descripcion;
  final bool esCfdi;
  final String estatus;
  final String fecha;
  final String folio;
  final int idEstatus;
  final int idTipomovto;
  final int lecturaAct;
  final int lecturaAnt;
  final String observacion;
  final String operacion;
  final String periodo;
  final int promedioAct;
  final String quien;
  final double saldo;
  final String sucursal;

  Movimiento copyWith({
    int? idPadron,
    double? abono,
    String? anomaliaAct,
    double? cargo,
    int? consumoAct,
    String? descripcion,
    bool? esCfdi,
    String? estatus,
    String? fecha,
    String? folio,
    int? idEstatus,
    int? idTipomovto,
    int? lecturaAct,
    int? lecturaAnt,
    String? observacion,
    String? operacion,
    String? periodo,
    int? promedioAct,
    String? quien,
    double? saldo,
    String? sucursal,
  }) =>
      Movimiento(
        idPadron: idPadron ?? this.idPadron,
        abono: abono ?? this.abono,
        anomaliaAct: anomaliaAct ?? this.anomaliaAct,
        cargo: cargo ?? this.cargo,
        consumoAct: consumoAct ?? this.consumoAct,
        descripcion: descripcion ?? this.descripcion,
        esCfdi: esCfdi ?? this.esCfdi,
        estatus: estatus ?? this.estatus,
        fecha: fecha ?? this.fecha,
        folio: folio ?? this.folio,
        idEstatus: idEstatus ?? this.idEstatus,
        idTipomovto: idTipomovto ?? this.idTipomovto,
        lecturaAct: lecturaAct ?? this.lecturaAct,
        lecturaAnt: lecturaAnt ?? this.lecturaAnt,
        observacion: observacion ?? this.observacion,
        operacion: operacion ?? this.operacion,
        periodo: periodo ?? this.periodo,
        promedioAct: promedioAct ?? this.promedioAct,
        quien: quien ?? this.quien,
        saldo: saldo ?? this.saldo,
        sucursal: sucursal ?? this.sucursal,
      );

  factory Movimiento.fromJson(Map<String, dynamic> json) => Movimiento(
        idPadron: json["id_padron"],
        abono: json["abono"],
        anomaliaAct: json["anomalia_act"],
        cargo: json["cargo"].toDouble(),
        consumoAct: json["consumo_act"] == "" ? 0 : json["consumo_act"],
        descripcion: json["descripcion"],
        esCfdi: json["es_cfdi"] == 1,
        estatus: json["estatus"],
        fecha: json["fecha"],
        folio: json["folio"],
        idEstatus: json["id_estatus"] == "" ? 0 : json["id_estatus"],
        idTipomovto: json["id_tipomovto"] == "" ? 0 : json["id_tipomovto"],
        lecturaAct: json["lectura_act"] == "" ? 0 : json["lectura_act"],
        lecturaAnt: json["lectura_ant"] == "" ? 0 : json["lectura_ant"],
        observacion: json["observacion"],
        operacion: json["operacion"],
        periodo: json["periodo"],
        promedioAct: json["promedio_act"] == "" ? 0 : json["promedio_act"],
        quien: json["quien"],
        saldo: json["saldo"].toDouble(),
        sucursal: json["sucursal"],
      );

  Map<String, dynamic> get toJson => {
        "id_padron": idPadron,
        "abono": abono,
        "anomalia_act": anomaliaAct,
        "cargo": cargo,
        "consumo_act": consumoAct,
        "descripcion": descripcion,
        "es_cfdi": esCfdi ? 1 : 0,
        "estatus": estatus,
        "fecha": fecha,
        "folio": folio,
        "id_estatus": idEstatus,
        "id_tipomovto": idTipomovto,
        "lectura_act": lecturaAct,
        "lectura_ant": lecturaAnt,
        "observacion": observacion,
        "operacion": operacion,
        "periodo": periodo,
        "promedio_act": promedioAct,
        "quien": quien,
        "saldo": saldo,
        "sucursal": sucursal,
      };
}
