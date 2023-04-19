class MovementsAnticipo {
  MovementsAnticipo({
    required this.descripcion,
    required this.fecha,
    required this.folio,
    required this.id,
    required this.idAnticipo,
    required this.idPadron,
    required this.idTipoanticipo,
    required this.importeA,
    required this.importeC,
    required this.importeS,
    required this.mesesA,
    required this.mesesC,
    required this.mesesS,
    required this.metrosA,
    required this.metrosC,
    required this.metrosS,
  });

  final String descripcion;
  final String fecha;
  final String folio;
  final int id;
  final int idAnticipo;
  final int idPadron;
  final int idTipoanticipo;
  final double importeA;
  final double importeC;
  final double importeS;
  final int mesesA;
  final int mesesC;
  final int mesesS;
  final int metrosA;
  final int metrosC;
  final int metrosS;

  MovementsAnticipo copyWith({
    String? descripcion,
    String? fecha,
    String? folio,
    int? id,
    int? idAnticipo,
    int? idPadron,
    int? idTipoanticipo,
    double? importeA,
    double? importeC,
    double? importeS,
    int? mesesA,
    int? mesesC,
    int? mesesS,
    int? metrosA,
    int? metrosC,
    int? metrosS,
  }) =>
      MovementsAnticipo(
        descripcion: descripcion ?? this.descripcion,
        fecha: fecha ?? this.fecha,
        folio: folio ?? this.folio,
        id: id ?? this.id,
        idAnticipo: idAnticipo ?? this.idAnticipo,
        idPadron: idPadron ?? this.idPadron,
        idTipoanticipo: idTipoanticipo ?? this.idTipoanticipo,
        importeA: importeA ?? this.importeA,
        importeC: importeC ?? this.importeC,
        importeS: importeS ?? this.importeS,
        mesesA: mesesA ?? this.mesesA,
        mesesC: mesesC ?? this.mesesC,
        mesesS: mesesS ?? this.mesesS,
        metrosA: metrosA ?? this.metrosA,
        metrosC: metrosC ?? this.metrosC,
        metrosS: metrosS ?? this.metrosS,
      );

  factory MovementsAnticipo.fromJson(Map<String, dynamic> json) =>
      MovementsAnticipo(
        descripcion: json["descripcion"],
        fecha: json["fecha"],
        folio: json["folio"],
        id: json["id"],
        idAnticipo: json["id_anticipo"],
        idPadron: json["id_padron"],
        idTipoanticipo: json["id_tipoanticipo"],
        importeA: json["importe_a"].toDouble(),
        importeC: json["importe_c"].toDouble(),
        importeS: json["importe_s"].toDouble(),
        mesesA: json["meses_a"],
        mesesC: json["meses_c"],
        mesesS: json["meses_s"],
        metrosA: json["metros_a"],
        metrosC: json["metros_c"],
        metrosS: json["metros_s"],
      );

  Map<String, dynamic> get toJson => {
        "descripcion": descripcion,
        "fecha": fecha,
        "folio": folio,
        "id": id,
        "id_anticipo": idAnticipo,
        "id_padron": idPadron,
        "id_tipoanticipo": idTipoanticipo,
        "importe_a": importeA,
        "importe_c": importeC,
        "importe_s": importeS,
        "meses_a": mesesA,
        "meses_c": mesesC,
        "meses_s": mesesS,
        "metros_a": metrosA,
        "metros_c": metrosC,
        "metros_s": metrosS,
      };
}
