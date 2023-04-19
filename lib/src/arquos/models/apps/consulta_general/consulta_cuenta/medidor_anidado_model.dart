class MedidorAnidado {
  MedidorAnidado({
    required this.adeudo,
    required this.anomaliaAct,
    required this.colonia,
    required this.consumoAct,
    required this.direccion,
    required this.esMacromedidor,
    required this.idCuenta,
    required this.idMedidor,
    required this.idPadron,
    required this.lecturaAct,
    required this.lecturaAnt,
    required this.localidad,
    required this.localizacion,
    required this.razonSocial,
  });

  final double adeudo;
  final String anomaliaAct;
  final String colonia;
  final int consumoAct;
  final String direccion;
  final bool esMacromedidor;
  final String idCuenta;
  final String idMedidor;
  final int idPadron;
  final int lecturaAct;
  final int lecturaAnt;
  final String localidad;
  final String localizacion;
  final String razonSocial;

  MedidorAnidado copyWith({
    double? adeudo,
    String? anomaliaAct,
    String? colonia,
    int? consumoAct,
    String? direccion,
    bool? esMacromedidor,
    String? idCuenta,
    String? idMedidor,
    int? idPadron,
    int? lecturaAct,
    int? lecturaAnt,
    String? localidad,
    String? localizacion,
    String? razonSocial,
  }) =>
      MedidorAnidado(
        adeudo: adeudo ?? this.adeudo,
        anomaliaAct: anomaliaAct ?? this.anomaliaAct,
        colonia: colonia ?? this.colonia,
        consumoAct: consumoAct ?? this.consumoAct,
        direccion: direccion ?? this.direccion,
        esMacromedidor: esMacromedidor ?? this.esMacromedidor,
        idCuenta: idCuenta ?? this.idCuenta,
        idMedidor: idMedidor ?? this.idMedidor,
        idPadron: idPadron ?? this.idPadron,
        lecturaAct: lecturaAct ?? this.lecturaAct,
        lecturaAnt: lecturaAnt ?? this.lecturaAnt,
        localidad: localidad ?? this.localidad,
        localizacion: localizacion ?? this.localizacion,
        razonSocial: razonSocial ?? this.razonSocial,
      );

  factory MedidorAnidado.fromJson(Map<String, dynamic> json) => MedidorAnidado(
        adeudo: json["adeudo"],
        anomaliaAct: json["anomalia_act"],
        colonia: json["colonia"],
        consumoAct: json["consumo_act"],
        direccion: json["direccion"],
        esMacromedidor: json["es_macromedidor"],
        idCuenta: json["id_cuenta"].toString(),
        idMedidor: json["id_medidor"],
        idPadron: json["id_padron"],
        lecturaAct: json["lectura_act"],
        lecturaAnt: json["lectura_ant"],
        localidad: json["localidad"],
        localizacion: json["localizacion"],
        razonSocial: json["razon_social"],
      );

  Map<String, dynamic> get toJson => {
        "adeudo": adeudo,
        "anomalia_act": anomaliaAct,
        "colonia": colonia,
        "consumo_act": consumoAct,
        "direccion": direccion,
        "es_macromedidor": esMacromedidor,
        "id_cuenta": idCuenta,
        "id_medidor": idMedidor,
        "id_padron": idPadron,
        "lectura_act": lecturaAct,
        "lectura_ant": lecturaAnt,
        "localidad": localidad,
        "localizacion": localizacion,
        "razon_social": razonSocial,
      };
}
