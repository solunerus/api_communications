class DatosFacturacion {
  DatosFacturacion({
    required this.anomaliaAct,
    required this.anomaliaAnt,
    required this.calculo,
    required this.ciclo,
    required this.consumoAct,
    required this.consumoAnt,
    required this.consumoFijo,
    required this.consumoRealAct,
    required this.consumoRealAnt,
    required this.esAnidado,
    required this.esMacromedidor,
    required this.facturasAdeudo,
    required this.fechaFacturaAct,
    required this.fechaFacturaAnt,
    required this.fechaLecturaAct,
    required this.fechaLecturaAnt,
    required this.idCuenta,
    required this.idCuentaMacro,
    required this.idPadron,
    required this.idPadronMacro,
    required this.impFijoAgua,
    required this.impFijoDren,
    required this.impFijoSane,
    required this.lecturaAct,
    required this.lecturaAnt,
    required this.lpsPagados,
    required this.mesAdeudoAct,
    required this.promedioAct,
    required this.promedioAnt,
    required this.servicio,
    required this.tarifa,
    required this.tarifaFija,
  });

  final bool esMacromedidor;
  final int consumoAct;
  final int consumoAnt;
  final int consumoFijo;
  final int consumoRealAct;
  final int consumoRealAnt;
  final int esAnidado;
  final int facturasAdeudo;
  final String idCuenta;
  final String idCuentaMacro;
  final int idPadron;
  final int idPadronMacro;
  final double impFijoAgua;
  final double impFijoDren;
  final double impFijoSane;
  final int lecturaAct;
  final int lecturaAnt;
  final double lpsPagados;
  final int mesAdeudoAct;
  final int promedioAct;
  final int promedioAnt;
  final String anomaliaAct;
  final String anomaliaAnt;
  final String calculo;
  final String ciclo;
  final String servicio;
  final String tarifa;
  final String tarifaFija;
  final String fechaFacturaAct;
  final String fechaFacturaAnt;
  final String fechaLecturaAct;
  final String fechaLecturaAnt;

  DatosFacturacion copyWith({
    String? anomaliaAct,
    String? anomaliaAnt,
    String? calculo,
    String? ciclo,
    int? consumoAct,
    int? consumoAnt,
    int? consumoFijo,
    int? consumoRealAct,
    int? consumoRealAnt,
    int? esAnidado,
    bool? esMacromedidor,
    int? facturasAdeudo,
    String? idCuenta,
    String? idCuentaMacro,
    int? idPadron,
    int? idPadronMacro,
    double? impFijoAgua,
    double? impFijoDren,
    double? impFijoSane,
    int? lecturaAct,
    int? lecturaAnt,
    double? lpsPagados,
    int? mesAdeudoAct,
    int? promedioAct,
    int? promedioAnt,
    String? servicio,
    String? tarifa,
    String? tarifaFija,
    String? fechaFacturaAct,
    String? fechaFacturaAnt,
    String? fechaLecturaAct,
    String? fechaLecturaAnt,
  }) =>
      DatosFacturacion(
        anomaliaAct: anomaliaAct ?? this.anomaliaAct,
        anomaliaAnt: anomaliaAnt ?? this.anomaliaAnt,
        calculo: calculo ?? this.calculo,
        ciclo: ciclo ?? this.ciclo,
        consumoAct: consumoAct ?? this.consumoAct,
        consumoAnt: consumoAnt ?? this.consumoAnt,
        consumoFijo: consumoFijo ?? this.consumoFijo,
        consumoRealAct: consumoRealAct ?? this.consumoRealAct,
        consumoRealAnt: consumoRealAnt ?? this.consumoRealAnt,
        esAnidado: esAnidado ?? this.esAnidado,
        esMacromedidor: esMacromedidor ?? this.esMacromedidor,
        facturasAdeudo: facturasAdeudo ?? this.facturasAdeudo,
        fechaFacturaAct: fechaFacturaAct ?? this.fechaFacturaAct,
        fechaFacturaAnt: fechaFacturaAnt ?? this.fechaFacturaAnt,
        fechaLecturaAct: fechaLecturaAct ?? this.fechaLecturaAct,
        fechaLecturaAnt: fechaLecturaAnt ?? this.fechaLecturaAnt,
        idCuenta: idCuenta ?? this.idCuenta,
        idCuentaMacro: idCuentaMacro ?? this.idCuentaMacro,
        idPadron: idPadron ?? this.idPadron,
        idPadronMacro: idPadronMacro ?? this.idPadronMacro,
        impFijoAgua: impFijoAgua ?? this.impFijoAgua,
        impFijoDren: impFijoDren ?? this.impFijoDren,
        impFijoSane: impFijoSane ?? this.impFijoSane,
        lecturaAct: lecturaAct ?? this.lecturaAct,
        lecturaAnt: lecturaAnt ?? this.lecturaAnt,
        lpsPagados: lpsPagados ?? this.lpsPagados,
        mesAdeudoAct: mesAdeudoAct ?? this.mesAdeudoAct,
        promedioAct: promedioAct ?? this.promedioAct,
        promedioAnt: promedioAnt ?? this.promedioAnt,
        servicio: servicio ?? this.servicio,
        tarifa: tarifa ?? this.tarifa,
        tarifaFija: tarifaFija ?? this.tarifaFija,
      );

  factory DatosFacturacion.fromJson(Map<String, dynamic> json) =>
      DatosFacturacion(
        anomaliaAct: json["anomalia_act"],
        anomaliaAnt: json["anomalia_ant"],
        calculo: json["calculo"],
        ciclo: json["ciclo"],
        consumoAct: json["consumo_act"],
        consumoAnt: json["consumo_ant"],
        consumoFijo: json["consumo_fijo"],
        consumoRealAct: json["consumo_real_act"],
        consumoRealAnt: json["consumo_real_ant"],
        esAnidado: json["es_anidado"],
        esMacromedidor: json["es_macromedidor"],
        facturasAdeudo: json["facturas_adeudo"],
        fechaFacturaAct: json["fecha_factura_act"],
        fechaFacturaAnt: json["fecha_factura_ant"],
        fechaLecturaAct: json["fecha_lectura_act"],
        fechaLecturaAnt: json["fecha_lectura_ant"],
        idCuenta: json["id_cuenta"].toString(),
        idCuentaMacro: json["id_cuenta_macro"].toString(),
        idPadron: json["id_padron"],
        idPadronMacro: json["id_padron_macro"],
        impFijoAgua: json["imp_fijo_agua"],
        impFijoDren: json["imp_fijo_dren"],
        impFijoSane: json["imp_fijo_sane"],
        lecturaAct: json["lectura_act"],
        lecturaAnt: json["lectura_ant"],
        lpsPagados: json["lps_pagados"],
        mesAdeudoAct: json["mes_adeudo_act"],
        promedioAct: json["promedio_act"],
        promedioAnt: json["promedio_ant"],
        servicio: json["servicio"],
        tarifa: json["tarifa"],
        tarifaFija: json["tarifa_fija"],
      );

  factory DatosFacturacion.getDefault() => DatosFacturacion(
        anomaliaAct: "",
        anomaliaAnt: "",
        calculo: "",
        ciclo: "",
        consumoAct: 0,
        consumoAnt: 0,
        consumoFijo: 0,
        consumoRealAct: 0,
        consumoRealAnt: 0,
        esAnidado: 0,
        esMacromedidor: false,
        facturasAdeudo: 0,
        fechaFacturaAct: "",
        fechaFacturaAnt: "",
        fechaLecturaAct: "",
        fechaLecturaAnt: "",
        idCuenta: '',
        idCuentaMacro: '',
        idPadron: 0,
        idPadronMacro: 0,
        impFijoAgua: 0,
        impFijoDren: 0,
        impFijoSane: 0,
        lecturaAct: 0,
        lecturaAnt: 0,
        lpsPagados: 0,
        mesAdeudoAct: 0,
        promedioAct: 0,
        promedioAnt: 0,
        servicio: "",
        tarifa: "",
        tarifaFija: "",
      );

  Map<String, dynamic> get toJson => {
        "anomalia_act": anomaliaAct,
        "anomalia_ant": anomaliaAnt,
        "calculo": calculo,
        "ciclo": ciclo,
        "consumo_act": consumoAct,
        "consumo_ant": consumoAnt,
        "consumo_fijo": consumoFijo,
        "consumo_real_act": consumoRealAct,
        "consumo_real_ant": consumoRealAnt,
        "es_anidado": esAnidado,
        "es_macromedidor": esMacromedidor,
        "facturas_adeudo": facturasAdeudo,
        "fecha_factura_act": fechaFacturaAct,
        "fecha_factura_ant": fechaFacturaAnt,
        "fecha_lectura_act": fechaLecturaAct,
        "fecha_lectura_ant": fechaLecturaAnt,
        "id_cuenta": idCuenta,
        "id_cuenta_macro": idCuentaMacro,
        "id_padron": idPadron,
        "id_padron_macro": idPadronMacro,
        "imp_fijo_agua": impFijoAgua,
        "imp_fijo_dren": impFijoDren,
        "imp_fijo_sane": impFijoSane,
        "lectura_act": lecturaAct,
        "lectura_ant": lecturaAnt,
        "lps_pagados": lpsPagados,
        "mes_adeudo_act": mesAdeudoAct,
        "promedio_act": promedioAct,
        "promedio_ant": promedioAnt,
        "servicio": servicio,
        "tarifa": tarifa,
        "tarifa_fija": tarifaFija,
      };
}
