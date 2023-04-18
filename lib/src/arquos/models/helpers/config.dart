class Config {
  Config({
    required this.parametro,
    required this.valor,
    required this.fecha,
  });

  final String parametro;

  final String valor;

  final String fecha;

  Map<String, dynamic> get toJson => {
        "parametro": parametro,
        "valor": valor,
        "fecha": fecha,
      };

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        parametro: json["parametro"],
        valor: json["valor"],
        fecha: json["fecha"],
      );

  factory Config.getDefault() => Config(
        parametro: "",
        valor: "",
        fecha: "",
      );

  Config copyWith({
    String? parametro,
    String? valor,
    String? fecha,
  }) =>
      Config(
        parametro: parametro ?? this.parametro,
        valor: valor ?? this.valor,
        fecha: fecha ?? this.fecha,
      );
}
