class DetAnticipo {
  DetAnticipo({
    required this.aIva,
    required this.aSubtotal,
    required this.aTotal,
    required this.afIva,
    required this.afSubtotal,
    required this.afTotal,
    required this.idConcepto,
    required this.concepto,
    required this.dIva,
    required this.dSubtotal,
    required this.dTotal,
    required this.idPadron,
    required this.sIva,
    required this.sSubtotal,
    required this.sTotal,
    required this.tIva,
    required this.tSubtotal,
    required this.tTotal,
  });

  final double aIva;
  final double aSubtotal;
  final double aTotal;
  final double afIva;
  final double afSubtotal;
  final double afTotal;
  final int idConcepto;
  final String concepto;
  final double dIva;
  final double dSubtotal;
  final double dTotal;
  final int idPadron;
  final double sIva;
  final double sSubtotal;
  final double sTotal;
  final double tIva;
  final double tSubtotal;
  final double tTotal;

  DetAnticipo copyWith({
    double? aIva,
    double? aSubtotal,
    double? aTotal,
    double? afIva,
    double? afSubtotal,
    double? afTotal,
    int? idConcepto,
    String? concepto,
    double? dIva,
    double? dSubtotal,
    double? dTotal,
    int? idPadron,
    double? sIva,
    double? sSubtotal,
    double? sTotal,
    double? tIva,
    double? tSubtotal,
    double? tTotal,
  }) =>
      DetAnticipo(
        aIva: aIva ?? this.aIva,
        aSubtotal: aSubtotal ?? this.aSubtotal,
        aTotal: aTotal ?? this.aTotal,
        afIva: afIva ?? this.afIva,
        afSubtotal: afSubtotal ?? this.afSubtotal,
        afTotal: afTotal ?? this.afTotal,
        idConcepto: idConcepto ?? this.idConcepto,
        concepto: concepto ?? this.concepto,
        dIva: dIva ?? this.dIva,
        dSubtotal: dSubtotal ?? this.dSubtotal,
        dTotal: dTotal ?? this.dTotal,
        idPadron: idPadron ?? this.idPadron,
        sIva: sIva ?? this.sIva,
        sSubtotal: sSubtotal ?? this.sSubtotal,
        sTotal: sTotal ?? this.sTotal,
        tIva: tIva ?? this.tIva,
        tSubtotal: tSubtotal ?? this.tSubtotal,
        tTotal: tTotal ?? this.tTotal,
      );

  factory DetAnticipo.fromJson(Map<String, dynamic> json) => DetAnticipo(
        aIva: json['a_iva'].toDouble(),
        aSubtotal: json['a_subtotal'].toDouble(),
        aTotal: json['a_total'].toDouble(),
        afIva: json['af_iva'].toDouble(),
        afSubtotal: json['af_subtotal'].toDouble(),
        afTotal: json['af_total'].toDouble(),
        idConcepto: json['id_concepto'],
        concepto: json['concepto'],
        dIva: json['d_iva'].toDouble(),
        dSubtotal: json['d_subtotal'].toDouble(),
        dTotal: json['d_total'].toDouble(),
        idPadron: json['id_padron'],
        sIva: json['s_iva'].toDouble(),
        sSubtotal: json['s_subtotal'].toDouble(),
        sTotal: json['s_total'].toDouble(),
        tIva: json['t_iva'].toDouble(),
        tSubtotal: json['t_subtotal'].toDouble(),
        tTotal: json['t_total'].toDouble(),
      );

  Map<String, dynamic> get toJson => {
        'a_iva': aIva,
        'a_subtotal': aSubtotal,
        'a_total': aTotal,
        'af_iva': afIva,
        'af_subtotal': afSubtotal,
        'af_total': afTotal,
        'id_concepto': idConcepto,
        'concepto': concepto,
        'd_iva': dIva,
        'd_subtotal': dSubtotal,
        'd_total': dTotal,
        'id_padron': idPadron,
        's_iva': sIva,
        's_subtotal': sSubtotal,
        's_total': sTotal,
        't_iva': tIva,
        't_subtotal': tSubtotal,
        't_total': tTotal,
      };
}
