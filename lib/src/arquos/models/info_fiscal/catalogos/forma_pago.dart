class FormaPago {
  FormaPago({
    required this.clave,
    required this.descripcion,
    required this.esBancarizado,
  });

  final String clave;
  final String descripcion;
  final bool esBancarizado;

  FormaPago copyWith({
    String? clave,
    String? descripcion,
    bool? esBancarizado,
  }) =>
      FormaPago(
        clave: clave ?? this.clave,
        descripcion: descripcion ?? this.descripcion,
        esBancarizado: esBancarizado ?? this.esBancarizado,
      );

  factory FormaPago.fromJson(Map<String, dynamic> json) => FormaPago(
        clave: json["clave"],
        descripcion: json["descripcion"],
        esBancarizado: json["es_bancarizado"],
      );

  Map<String, dynamic> get toJson => {
        "clave": clave,
        "descripcion": descripcion,
        "es_bancarizado": esBancarizado,
      };
}
