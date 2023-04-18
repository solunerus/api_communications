class Oficina {
  Oficina({
    required this.rfc,
    required this.fecha,
    required this.direccion,
    required this.descripcion,
  });

  final String rfc;
  final String fecha;
  final String direccion;
  final String descripcion;

  Map<String, dynamic> get toJson => {
        "rfc": rfc,
        "fecha": fecha,
        "direccion": direccion,
        "descripcion": descripcion,
      };

  factory Oficina.fromJson(Map<String, dynamic> json) => Oficina(
        rfc: json["rfc"],
        fecha: json["fecha"],
        direccion: json["direccion"],
        descripcion: json["descripcion"],
      );

  factory Oficina.getDefault() => Oficina(
        rfc: "SNE1302225E3",
        descripcion: "SOLUCIONES NERUS SA DE CV",
        direccion: "CIUDAD VICTORIA, TAMS.",
        fecha: "NO CONECTADO",
      );

  Oficina copyWith({
    String? rfc,
    String? fecha,
    String? direccion,
    String? descripcion,
  }) =>
      Oficina(
        rfc: rfc ?? this.rfc,
        fecha: fecha ?? this.fecha,
        direccion: direccion ?? this.direccion,
        descripcion: descripcion ?? this.descripcion,
      );
}
