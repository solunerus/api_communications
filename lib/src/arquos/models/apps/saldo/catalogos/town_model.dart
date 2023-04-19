class Town {
  Town({
    required this.descripcion,
    required this.idPoblacion,
  });

  final String descripcion;
  final int idPoblacion;

  factory Town.fromJson(Map<String, dynamic> json) => Town(
        descripcion: json["descripcion"],
        idPoblacion: json["id_poblacion"],
      );

  Town copyWith({
    String? descripcion,
    int? idPoblacion,
  }) =>
      Town(
        descripcion: descripcion ?? this.descripcion,
        idPoblacion: idPoblacion ?? this.idPoblacion,
      );

  Map<String, dynamic> toJson() => {
        "descripcion": descripcion,
        "id_poblacion": idPoblacion,
      };
}
