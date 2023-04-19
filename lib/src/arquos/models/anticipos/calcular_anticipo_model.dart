class CalcularAnticipo {
  CalcularAnticipo({
    required this.cobrar,
    required this.consumoxmes,
    required this.estaDentroPeriodo,
    required this.idCuenta,
    required this.idPadron,
    required this.idTipo,
    required this.impAfavor,
    required this.impBonifica,
    required this.impTotal,
    required this.importexmes,
    required this.lineaCaptura,
    required this.mesFin,
    required this.mesIni,
    required this.meses,
    required this.metros,
    required this.percentDesc,
    required this.periodo,
    required this.vencimiento,
    required this.yearFin,
    required this.yearIni,
    required this.claseUsuario,
    required this.importeXaplicar,
    required this.mesesXaplicar,
    required this.metrosXaplicar,
    required this.porcentSubsidio,
    required this.vigenciaSubsidio,
    required this.promedioAct,
  });

  final String idCuenta;
  final int idPadron;
  final String periodo; // Periodo a cobrar
  final String claseUsuario; // Clase de usuario *
  final String vigenciaSubsidio; // Vigencia del subsidio *
  final double porcentSubsidio; // Porcentaje de subsidio *
  final bool estaDentroPeriodo; // Si es true, se puede seleccionar anual
  final int idTipo; // posicion del option (1: Anual, 2: Normal)
  final int yearIni; // Año desde
  final int mesIni; // Mes desde
  final int yearFin; // Año hasta
  final int mesFin; // Mes hasta
  final int promedioAct; // Promedio actual *
  final int consumoxmes; // metros por mes
  final int meses; // meses a cobrar
  final int metros; // metros a cobrar
  final double importexmes; // importe por mes
  final double impAfavor; // Saldo a favor
  final int metrosXaplicar; // Metros a aplicar *
  final int mesesXaplicar; // Meses a aplicar *
  final double impBonifica; // No se muestra
  final double impTotal; // No se muestra
  final String lineaCaptura; // No se muestra
  final String vencimiento; // No se muestra
  final double percentDesc; // Descuento
  final double importeXaplicar; // Importe a aplicar *
  final double cobrar; // importe total a pagar

  CalcularAnticipo copyWith({
    String? claseUsuario,
    double? cobrar,
    int? consumoxmes,
    bool? estaDentroPeriodo,
    String? idCuenta,
    int? idPadron,
    int? idTipo,
    double? impAfavor,
    double? impBonifica,
    double? impTotal,
    double? importexmes,
    String? lineaCaptura,
    int? mesFin,
    int? mesIni,
    int? meses,
    int? metros,
    double? percentDesc,
    String? periodo,
    String? vencimiento,
    int? yearFin,
    int? yearIni,
    double? importeXaplicar,
    int? mesesXaplicar,
    int? metrosXaplicar,
    double? porcentSubsidio,
    int? promedioAct,
    String? vigenciaSubsidio,
  }) =>
      CalcularAnticipo(
        claseUsuario: claseUsuario ?? this.claseUsuario,
        cobrar: cobrar ?? this.cobrar,
        consumoxmes: consumoxmes ?? this.consumoxmes,
        estaDentroPeriodo: estaDentroPeriodo ?? this.estaDentroPeriodo,
        idCuenta: idCuenta ?? this.idCuenta,
        idPadron: idPadron ?? this.idPadron,
        idTipo: idTipo ?? this.idTipo,
        impAfavor: impAfavor ?? this.impAfavor,
        impBonifica: impBonifica ?? this.impBonifica,
        impTotal: impTotal ?? this.impTotal,
        importeXaplicar: importeXaplicar ?? this.importeXaplicar,
        importexmes: importexmes ?? this.importexmes,
        lineaCaptura: lineaCaptura ?? this.lineaCaptura,
        mesFin: mesFin ?? this.mesFin,
        mesIni: mesIni ?? this.mesIni,
        meses: meses ?? this.meses,
        mesesXaplicar: mesesXaplicar ?? this.mesesXaplicar,
        metros: metros ?? this.metros,
        metrosXaplicar: metrosXaplicar ?? this.metrosXaplicar,
        percentDesc: percentDesc ?? this.percentDesc,
        periodo: periodo ?? this.periodo,
        porcentSubsidio: porcentSubsidio ?? this.porcentSubsidio,
        promedioAct: promedioAct ?? this.promedioAct,
        vencimiento: vencimiento ?? this.vencimiento,
        vigenciaSubsidio: vigenciaSubsidio ?? this.vigenciaSubsidio,
        yearFin: yearFin ?? this.yearFin,
        yearIni: yearIni ?? this.yearIni,
      );

  factory CalcularAnticipo.fromJson(Map<String, dynamic> json) =>
      CalcularAnticipo(
        cobrar: json["cobrar"],
        consumoxmes: json["consumoxmes"],
        estaDentroPeriodo: json["esta_dentro_periodo"],
        idCuenta: json["id_cuenta"].toString(),
        idPadron: json["id_padron"],
        idTipo: json["id_tipo"],
        impAfavor: json["imp_afavor"],
        impBonifica: json["imp_bonifica"].toDouble(),
        impTotal: json["imp_total"].toDouble(),
        importexmes: json["importexmes"].toDouble(),
        lineaCaptura: json["linea_captura"],
        mesFin: json["mes_fin"],
        mesIni: json["mes_ini"],
        meses: json["meses"],
        metros: json["metros"],
        percentDesc: json["percent_desc"].toDouble(),
        periodo: json["periodo"],
        vencimiento: json["vencimiento"],
        yearFin: json["year_fin"],
        yearIni: json["year_ini"],
        claseUsuario: json['clase_usuario'],
        importeXaplicar: json['importe_xaplicar'],
        mesesXaplicar: json['meses_xaplicar'],
        metrosXaplicar: json['metros_xaplicar'],
        porcentSubsidio: json['porcent_subsidio'],
        vigenciaSubsidio: json['vigencia_subsidio'],
        promedioAct: json['promedio_act'],
      );

  Map<String, dynamic> get toJson => {
        "cobrar": cobrar,
        "consumoxmes": consumoxmes,
        "esta_dentro_periodo": estaDentroPeriodo,
        "id_cuenta": idCuenta,
        "id_padron": idPadron,
        "id_tipo": idTipo,
        "imp_afavor": impAfavor,
        "imp_bonifica": impBonifica,
        "imp_total": impTotal,
        "importexmes": importexmes,
        "linea_captura": lineaCaptura,
        "mes_fin": mesFin,
        "mes_ini": mesIni,
        "meses": meses,
        "metros": metros,
        "percent_desc": percentDesc,
        "periodo": periodo,
        "vencimiento": vencimiento,
        "year_fin": yearFin,
        "year_ini": yearIni,
        "clase_usuario": claseUsuario,
        "importe_xaplicar": importeXaplicar,
        "meses_xaplicar": mesesXaplicar,
        "metros_xaplicar": metrosXaplicar,
        "porcent_subsidio": porcentSubsidio,
        "vigencia_subsidio": vigenciaSubsidio,
        "promedio_act": promedioAct,
      };

  factory CalcularAnticipo.getDefault() => CalcularAnticipo(
        cobrar: 0,
        consumoxmes: 0,
        estaDentroPeriodo: false,
        idCuenta: '',
        idPadron: 0,
        idTipo: 0,
        impAfavor: 0,
        impBonifica: 0,
        impTotal: 0,
        importexmes: 0,
        lineaCaptura: '',
        mesFin: 0,
        mesIni: 0,
        meses: 0,
        metros: 0,
        percentDesc: 0,
        periodo: '',
        vencimiento: '',
        yearFin: 0,
        yearIni: 0,
        claseUsuario: '',
        importeXaplicar: 0,
        mesesXaplicar: 0,
        metrosXaplicar: 0,
        porcentSubsidio: 0,
        vigenciaSubsidio: '',
        promedioAct: 0,
      );
}
