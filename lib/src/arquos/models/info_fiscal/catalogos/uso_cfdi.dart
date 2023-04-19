class UsoCfdi {
  UsoCfdi({
    required this.clave,
    required this.descripcion,
    required this.idUso,
  });

  final String clave;
  final String descripcion;
  final int idUso;

  factory UsoCfdi.fromJson(Map<String, dynamic> json) => UsoCfdi(
        clave: json["clave"],
        descripcion: json["descripcion"],
        idUso: json["id_uso"],
      );

  UsoCfdi copyWith({
    String? clave,
    String? descripcion,
    int? idUso,
  }) =>
      UsoCfdi(
        clave: clave ?? this.clave,
        descripcion: descripcion ?? this.descripcion,
        idUso: idUso ?? this.idUso,
      );

  Map<String, dynamic> get toJson => {
        "clave": clave,
        "descripcion": descripcion,
        "id_uso": idUso,
      };
}
