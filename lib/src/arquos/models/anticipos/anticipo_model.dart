class Anticipo {
  Anticipo({
    // required this.mes1,
    required this.genero,
    required this.mesesCancelados,
    required this.importeXaplicar,
    // required this.ao1,
    required this.importexmes,
    required this.mesesCobrados,
    required this.preparo,
    // required this.ao2,
    required this.idAnticipo,
    required this.idTipoAnticipado,
    required this.tipoAnticipado,
    required this.mesesAplicados,
    required this.impTotal,
    required this.fechaPreparo,
    required this.cancelo,
    required this.mesesXaplicar,
    required this.periodo,
    required this.cancelado,
    required this.maquinaPreparo,
    required this.metrosXaplicar,
    required this.idCuenta,
    required this.mes2,
    required this.importe,
    required this.observaC,
    required this.fechaInsert,
    required this.percentDesc,
    required this.fecha,
    required this.idPadron,
    required this.observa,
    required this.meses,
    required this.metrosxmes,
    required this.estatus,
    required this.impBonifica,
    required this.m3Cancelados,
    required this.anticipoAnual,
    required this.aplicado,
    required this.m3Cobrados,
    required this.m3Aplicados,
    required this.fechaCancelo,
  });

  // final int mes1;
  final String genero;
  final int mesesCancelados;
  final double importeXaplicar;
  // final int ao1;
  final double importexmes;
  final int mesesCobrados;
  final String preparo;
  // final int ao2;
  final int idAnticipo;
  final int idTipoAnticipado;
  final String tipoAnticipado;
  final int mesesAplicados;
  final double impTotal;
  final String fechaPreparo;
  final String cancelo;
  final int mesesXaplicar;
  final String periodo;
  final double cancelado;
  final String maquinaPreparo;
  final int metrosXaplicar;
  final String idCuenta;
  final int mes2;
  final double importe;
  final String observaC;
  final String fechaInsert;
  final double percentDesc;
  final String fecha;
  final int idPadron;
  final String observa;
  final int meses;
  final int metrosxmes;
  final String estatus;
  final double impBonifica;
  final int m3Cancelados;
  final int anticipoAnual;
  final double aplicado;
  final int m3Cobrados;
  final int m3Aplicados;
  final String fechaCancelo;

  Anticipo copyWith({
    // int? mes1,
    String? genero,
    int? mesesCancelados,
    double? importeXaplicar,
    // int? ao1,
    double? importexmes,
    int? mesesCobrados,
    String? preparo,
    // int? ao2,
    int? idAnticipo,
    int? idTipoAnticipado,
    String? tipoAnticipado,
    int? mesesAplicados,
    double? impTotal,
    String? fechaPreparo,
    String? cancelo,
    int? mesesXaplicar,
    String? periodo,
    double? cancelado,
    String? maquinaPreparo,
    int? metrosXaplicar,
    String? idCuenta,
    int? mes2,
    double? importe,
    String? observaC,
    String? fechaInsert,
    double? percentDesc,
    String? fecha,
    int? idPadron,
    String? observa,
    int? meses,
    int? metrosxmes,
    String? estatus,
    double? impBonifica,
    int? m3Cancelados,
    int? anticipoAnual,
    double? aplicado,
    int? m3Cobrados,
    int? m3Aplicados,
    String? fechaCancelo,
  }) =>
      Anticipo(
        // mes1: mes1 ?? this.mes1,
        genero: genero ?? this.genero,
        mesesCancelados: mesesCancelados ?? this.mesesCancelados,
        importeXaplicar: importeXaplicar ?? this.importeXaplicar,
        // ao1: ao1 ?? this.ao1,
        importexmes: importexmes ?? this.importexmes,
        mesesCobrados: mesesCobrados ?? this.mesesCobrados,
        preparo: preparo ?? this.preparo,
        // ao2: ao2 ?? this.ao2,
        idAnticipo: idAnticipo ?? this.idAnticipo,
        idTipoAnticipado: idTipoAnticipado ?? this.idTipoAnticipado,
        tipoAnticipado: tipoAnticipado ?? this.tipoAnticipado,
        mesesAplicados: mesesAplicados ?? this.mesesAplicados,
        impTotal: impTotal ?? this.impTotal,
        fechaPreparo: fechaPreparo ?? this.fechaPreparo,
        cancelo: cancelo ?? this.cancelo,
        mesesXaplicar: mesesXaplicar ?? this.mesesXaplicar,
        periodo: periodo ?? this.periodo,
        cancelado: cancelado ?? this.cancelado,
        maquinaPreparo: maquinaPreparo ?? this.maquinaPreparo,
        metrosXaplicar: metrosXaplicar ?? this.metrosXaplicar,
        idCuenta: idCuenta ?? this.idCuenta,
        mes2: mes2 ?? this.mes2,
        importe: importe ?? this.importe,
        observaC: observaC ?? this.observaC,
        fechaInsert: fechaInsert ?? this.fechaInsert,
        percentDesc: percentDesc ?? this.percentDesc,
        fecha: fecha ?? this.fecha,
        idPadron: idPadron ?? this.idPadron,
        observa: observa ?? this.observa,
        meses: meses ?? this.meses,
        metrosxmes: metrosxmes ?? this.metrosxmes,
        estatus: estatus ?? this.estatus,
        impBonifica: impBonifica ?? this.impBonifica,
        m3Cancelados: m3Cancelados ?? this.m3Cancelados,
        anticipoAnual: anticipoAnual ?? this.anticipoAnual,
        aplicado: aplicado ?? this.aplicado,
        m3Cobrados: m3Cobrados ?? this.m3Cobrados,
        m3Aplicados: m3Aplicados ?? this.m3Aplicados,
        fechaCancelo: fechaCancelo ?? this.fechaCancelo,
      );

  factory Anticipo.fromJson(Map<String, dynamic> json) => Anticipo(
        // mes1: json["mes_1"],
        genero: json["genero"],
        mesesCancelados: json["meses_cancelados"],
        importeXaplicar: json["importe_xaplicar"],
        // ao1: json["año_1"],
        importexmes: json["importexmes"],
        mesesCobrados: json["meses_cobrados"],
        preparo: json["preparo"],
        // ao2: json["año_2"],
        idAnticipo: json["id_anticipo"],
        idTipoAnticipado: json["id_tipoAnticipado"],
        tipoAnticipado: json["tipo_anticipado"],
        mesesAplicados: json["meses_aplicados"],
        impTotal: json["imp_total"],
        fechaPreparo: json["fecha_preparo"],
        cancelo: json["cancelo"],
        mesesXaplicar: json["meses_xaplicar"],
        periodo: json["periodo"],
        cancelado: json["cancelado"],
        maquinaPreparo: json["maquina_preparo"],
        metrosXaplicar: json["metros_xaplicar"],
        idCuenta: json["id_cuenta"].toString(),
        mes2: json["mes_2"],
        importe: json["importe"],
        observaC: json["observa_c"],
        fechaInsert: json["fecha_insert"],
        percentDesc: json["percent_desc"], //Int
        fecha: json["fecha"],
        idPadron: json["id_padron"],
        observa: json["observa"],
        meses: json["meses"],
        metrosxmes: json["metrosxmes"],
        estatus: json["estatus"],
        impBonifica: json["imp_bonifica"],
        m3Cancelados: json["m3_cancelados"],
        anticipoAnual: json["anticipo_anual"],
        aplicado: json["aplicado"],
        m3Cobrados: json["m3_cobrados"],
        m3Aplicados: json["m3_aplicados"],
        fechaCancelo: json["fecha_cancelo"],
      );

  Map<String, dynamic> get toJson => {
        // "mes_1": mes1,
        "genero": genero,
        "meses_cancelados": mesesCancelados,
        "importe_xaplicar": importeXaplicar,
        // "año_1": ao1,
        "importexmes": importexmes,
        "meses_cobrados": mesesCobrados,
        "preparo": preparo,
        // "año_2": ao2,
        "id_anticipo": idAnticipo,
        "id_tipoAnticipado": idTipoAnticipado,
        "tipo_anticipado": tipoAnticipado,
        "meses_aplicados": mesesAplicados,
        "imp_total": impTotal,
        "fecha_preparo": fechaPreparo,
        "cancelo": cancelo,
        "meses_xaplicar": mesesXaplicar,
        "periodo": periodo,
        "cancelado": cancelado,
        "maquina_preparo": maquinaPreparo,
        "metros_xaplicar": metrosXaplicar,
        "id_cuenta": idCuenta,
        "mes_2": mes2,
        "importe": importe,
        "observa_c": observaC,
        "fecha_insert": fechaInsert,
        "percent_desc": percentDesc,
        "fecha": fecha,
        "id_padron": idPadron,
        "observa": observa,
        "meses": meses,
        "metrosxmes": metrosxmes,
        "estatus": estatus,
        "imp_bonifica": impBonifica,
        "m3_cancelados": m3Cancelados,
        "anticipo_anual": anticipoAnual,
        "aplicado": aplicado,
        "m3_cobrados": m3Cobrados,
        "m3_aplicados": m3Aplicados,
        "fecha_cancelo": fechaCancelo,
      };
}
