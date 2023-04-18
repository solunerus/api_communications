class Calificacion {
  Calificacion({
    required this.cantidadAdeudo,
    required this.fechaDesde,
    required this.estrellas,
  });

  final int cantidadAdeudo;

  final String fechaDesde;

  final int estrellas;

  Map<String, dynamic> get toJson => {
        "cantidad": cantidadAdeudo,
        "desde": fechaDesde,
        "estrellas": estrellas,
      };

  factory Calificacion.fromJson(Map<String, dynamic> json) => Calificacion(
        cantidadAdeudo: json["cantidad"],
        fechaDesde: json["desde"],
        estrellas: json["estrellas"],
      );

  factory Calificacion.getDefault() => Calificacion(
        cantidadAdeudo: 0,
        fechaDesde: "",
        estrellas: 0,
      );

  Calificacion copyWith({
    int? cantidadAdeudo,
    String? fechaDesde,
    int? estrellas,
  }) =>
      Calificacion(
        cantidadAdeudo: cantidadAdeudo ?? this.cantidadAdeudo,
        fechaDesde: fechaDesde ?? this.fechaDesde,
        estrellas: estrellas ?? this.estrellas,
      );
}
