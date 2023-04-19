class TipoParciales {
  TipoParciales({
    required this.deudaMinima,
    required this.idTipoparcial,
    required this.modificarImporte,
    required this.modificarPlazos,
    required this.plazosMax,
    required this.plazosMin,
    required this.porcentaje,
    required this.tipoparcial,
  });

  final double deudaMinima;
  final int idTipoparcial;
  final bool modificarImporte;
  final bool modificarPlazos;
  final int plazosMax;
  final int plazosMin;
  final double porcentaje;
  final String tipoparcial;

  TipoParciales copyWith({
    double? deudaMinima,
    int? idTipoparcial,
    bool? modificarImporte,
    bool? modificarPlazos,
    int? plazosMax,
    int? plazosMin,
    double? porcentaje,
    String? tipoparcial,
  }) =>
      TipoParciales(
        deudaMinima: deudaMinima ?? this.deudaMinima,
        idTipoparcial: idTipoparcial ?? this.idTipoparcial,
        modificarImporte: modificarImporte ?? this.modificarImporte,
        modificarPlazos: modificarPlazos ?? this.modificarPlazos,
        plazosMax: plazosMax ?? this.plazosMax,
        plazosMin: plazosMin ?? this.plazosMin,
        porcentaje: porcentaje ?? this.porcentaje,
        tipoparcial: tipoparcial ?? this.tipoparcial,
      );

  factory TipoParciales.fromJson(Map<String, dynamic> json) => TipoParciales(
        deudaMinima: json["deuda_minima"].toDouble(),
        idTipoparcial: json["id_tipoparcial"],
        modificarImporte: json["modificar_importe"],
        modificarPlazos: json["modificar_plazos"],
        plazosMax: json["plazos_max"],
        plazosMin: json["plazos_min"],
        porcentaje: json["porcentaje"].toDouble(),
        tipoparcial: json["tipoparcial"],
      );

  Map<String, dynamic> get toJson => {
        "deuda_minima": deudaMinima,
        "id_tipoparcial": idTipoparcial,
        "modificar_importe": modificarImporte,
        "modificar_plazos": modificarPlazos,
        "plazos_max": plazosMax,
        "plazos_min": plazosMin,
        "porcentaje": porcentaje,
        "tipoparcial": tipoparcial,
      };
}
