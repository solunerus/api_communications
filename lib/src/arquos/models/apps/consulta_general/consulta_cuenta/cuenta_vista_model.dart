class CuentaVista {
  CuentaVista({
    required this.adeudo,
    required this.colonia,
    required this.direccion,
    required this.equipos,
    required this.idCuenta,
    required this.idPadron,
    required this.localidad,
    required this.localizacion,
    required this.operador,
    required this.razonSocial,
    required this.ultimaVez,
    required this.veces,
  });

  final double adeudo;
  final String colonia;
  final String direccion;
  final String equipos;
  final String idCuenta;
  final int idPadron;
  final String localidad;
  final String localizacion;
  final String operador;
  final String razonSocial;
  final String ultimaVez;
  final int veces;

  CuentaVista copyWith({
    double? adeudo,
    String? colonia,
    String? direccion,
    String? equipos,
    String? idCuenta,
    int? idPadron,
    String? localidad,
    String? localizacion,
    String? operador,
    String? razonSocial,
    String? ultimaVez,
    int? veces,
  }) =>
      CuentaVista(
        adeudo: adeudo ?? this.adeudo,
        colonia: colonia ?? this.colonia,
        direccion: direccion ?? this.direccion,
        equipos: equipos ?? this.equipos,
        idCuenta: idCuenta ?? this.idCuenta,
        idPadron: idPadron ?? this.idPadron,
        localidad: localidad ?? this.localidad,
        localizacion: localizacion ?? this.localizacion,
        operador: operador ?? this.operador,
        razonSocial: razonSocial ?? this.razonSocial,
        ultimaVez: ultimaVez ?? this.ultimaVez,
        veces: veces ?? this.veces,
      );

  factory CuentaVista.fromJson(Map<String, dynamic> json) => CuentaVista(
        adeudo: json["adeudo"].toDouble(),
        colonia: json["colonia"],
        direccion: json["direccion"],
        equipos: json["equipos"],
        idCuenta: json["id_cuenta"].toString(),
        idPadron: json["id_padron"],
        localidad: json["localidad"],
        localizacion: json["localizacion"],
        operador: json["operador"],
        razonSocial: json["razon_social"],
        ultimaVez: json["ultima_vez"],
        veces: json["veces"],
      );

  Map<String, dynamic> get toJson => {
        "adeudo": adeudo,
        "colonia": colonia,
        "direccion": direccion,
        "equipos": equipos,
        "id_cuenta": idCuenta,
        "id_padron": idPadron,
        "localidad": localidad,
        "localizacion": localizacion,
        "operador": operador,
        "razon_social": razonSocial,
        "ultima_vez": ultimaVez,
        "veces": veces,
      };
}
