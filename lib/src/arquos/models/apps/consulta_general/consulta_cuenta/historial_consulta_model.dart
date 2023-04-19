class HistorialConsulta {
  HistorialConsulta({
    required this.fechaInsert,
    required this.formulario,
    required this.maquina,
    required this.operador,
  });

  final String fechaInsert;
  final String formulario;
  final String maquina;
  final String operador;

  HistorialConsulta copyWith({
    String? fechaInsert,
    String? formulario,
    String? maquina,
    String? operador,
  }) =>
      HistorialConsulta(
        fechaInsert: fechaInsert ?? this.fechaInsert,
        formulario: formulario ?? this.formulario,
        maquina: maquina ?? this.maquina,
        operador: operador ?? this.operador,
      );

  factory HistorialConsulta.fromJson(Map<String, dynamic> json) =>
      HistorialConsulta(
        fechaInsert: json["fecha_insert"],
        formulario: json["formulario"],
        maquina: json["maquina"],
        operador: json["operador"],
      );

  Map<String, dynamic> get toJson => {
        "fecha_insert": fechaInsert,
        "formulario": formulario,
        "maquina": maquina,
        "operador": operador,
      };
}
