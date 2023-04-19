class Suburb {
  Suburb({
    required this.descripcion,
    required this.idColonia,
    required this.idPoblacion,
    required this.idRow,
  });

  final String descripcion;
  final int idColonia;
  final int idPoblacion;
  final int idRow;

  factory Suburb.fromJson(Map<String, dynamic> json) => Suburb(
        descripcion: json["descripcion"],
        idColonia: json["id_colonia"],
        idPoblacion: json["id_poblacion"],
        idRow: json["id_row"],
      );

  Suburb copyWith({
    String? descripcion,
    int? idColonia,
    int? idPoblacion,
    int? idRow,
  }) =>
      Suburb(
        descripcion: descripcion ?? this.descripcion,
        idColonia: idColonia ?? this.idColonia,
        idPoblacion: idPoblacion ?? this.idPoblacion,
        idRow: idRow ?? this.idRow,
      );

  Map<String, dynamic> toJson() => {
        "descripcion": descripcion,
        "id_colonia": idColonia,
        "id_poblacion": idPoblacion,
        "id_row": idRow,
      };
}
