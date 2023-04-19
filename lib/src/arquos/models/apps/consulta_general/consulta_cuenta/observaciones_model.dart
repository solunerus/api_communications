class Observacion {
  Observacion({
    required this.cancelo,
    required this.fecha,
    required this.fechaCancelo,
    required this.genero,
    required this.idCuenta,
    required this.idObservacion,
    required this.idPadron,
    required this.inactivo,
    required this.mostrarHasta,
    required this.observacion,
    required this.observacionC,
    required this.sucursal,
  });

  final String cancelo;
  final String fecha;
  final String fechaCancelo;
  final String genero;
  final String idCuenta;
  final int idObservacion;
  final int idPadron;
  final bool inactivo;
  final String mostrarHasta;
  final String observacion;
  final String observacionC;
  final String sucursal;

  Observacion copyWith({
    String? cancelo,
    String? fecha,
    String? fechaCancelo,
    String? genero,
    String? idCuenta,
    int? idObservacion,
    int? idPadron,
    bool? inactivo,
    String? mostrarHasta,
    String? observacion,
    String? observacionC,
    String? sucursal,
  }) =>
      Observacion(
        cancelo: cancelo ?? this.cancelo,
        fecha: fecha ?? this.fecha,
        fechaCancelo: fechaCancelo ?? this.fechaCancelo,
        genero: genero ?? this.genero,
        idCuenta: idCuenta ?? this.idCuenta,
        idObservacion: idObservacion ?? this.idObservacion,
        idPadron: idPadron ?? this.idPadron,
        inactivo: inactivo ?? this.inactivo,
        mostrarHasta: mostrarHasta ?? this.mostrarHasta,
        observacion: observacion ?? this.observacion,
        observacionC: observacionC ?? this.observacionC,
        sucursal: sucursal ?? this.sucursal,
      );

  factory Observacion.fromJson(Map<String, dynamic> json) => Observacion(
        cancelo: json["cancelo"],
        fecha: json["fecha"],
        fechaCancelo: json["fecha_cancelo"],
        genero: json["genero"],
        idCuenta: json["id_cuenta"].toString(),
        idObservacion: json["id_observacion"],
        idPadron: json["id_padron"],
        inactivo: json["inactivo"],
        mostrarHasta: json["mostrar_hasta"],
        observacion: json["observacion"],
        observacionC: json["observacion_c"],
        sucursal: json["sucursal"],
      );

  Map<String, dynamic> get toJson => {
        "cancelo": cancelo,
        "fecha": fecha,
        "fecha_cancelo": fechaCancelo,
        "genero": genero,
        "id_cuenta": idCuenta,
        "id_observacion": idObservacion,
        "id_padron": idPadron,
        "inactivo": inactivo,
        "mostrar_hasta": mostrarHasta,
        "observacion": observacion,
        "observacion_c": observacionC,
        "sucursal": sucursal,
      };
}
