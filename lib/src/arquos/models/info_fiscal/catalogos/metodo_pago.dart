class MetodoPago {
  MetodoPago({
    required this.clave,
    required this.descripcion,
  });

  final String clave;
  final String descripcion;

  MetodoPago copyWith({
    String? clave,
    String? descripcion,
  }) =>
      MetodoPago(
        clave: clave ?? this.clave,
        descripcion: descripcion ?? this.descripcion,
      );

  factory MetodoPago.fromJson(Map<String, dynamic> json) => MetodoPago(
        clave: json["clave"],
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> get toJson => {
        "clave": clave,
        "descripcion": descripcion,
      };
}
