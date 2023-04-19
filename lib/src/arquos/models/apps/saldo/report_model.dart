class Report {
  Report({
    required this.emailUser,
    required this.idRemoto,
    required this.idLocal,
    required this.observacionLocal,
    required this.observacionRemota,
    required this.direccion,
    required this.idColonia,
    required this.colonia,
    required this.idPoblacion,
    required this.poblacion,
    required this.latitud,
    required this.longitud,
    required this.estatus,
    required this.fechaAtendio,
    required this.fechaGenero,
    required this.idCuenta,
    required this.idTipoReporte,
    required this.tipoReporte,
    required this.idPadron,
  });

  final String idRemoto;
  final String emailUser;
  final String idLocal;
  final String observacionLocal;
  final String observacionRemota;
  final String direccion;
  final int idColonia;
  final String colonia;
  final int idPoblacion;
  final String poblacion;
  final double latitud;
  final double longitud;
  final String estatus;
  final String fechaAtendio; //día que se atendio el reporte
  final String fechaGenero; //día que suba el reporte
  final String idCuenta;
  final int idTipoReporte;
  final String tipoReporte;
  final int idPadron;

  ///Lista de imagenes
  List<String> images = [];

  factory Report.fromJson(Map<String, dynamic> json) => Report(
        idRemoto: json['id_remoto'].toString(),
        emailUser: json['email_user'],
        idLocal: json['id_local'],
        observacionLocal: json['observa_a'],
        observacionRemota: json['observa_b'],
        direccion: json['direccion'],
        idColonia: json['id_colonia'],
        colonia: json['colonia'],
        idPoblacion: json['id_poblacion'],
        poblacion: json['poblacion'],
        latitud: double.parse(json['latitud']),
        longitud: double.parse(json['longitud']),
        estatus: json['estatus'],
        fechaAtendio: json['fecha_atendio'],
        fechaGenero: json['fecha_genero'],
        idCuenta: json['id_cuenta'],
        idTipoReporte: json['id_tipo_reporte'],
        idPadron: json['id_padron'],
        tipoReporte: json['reporte'],
      );

  factory Report.getDefault(String idLocal, String emailUser) => Report(
        idRemoto: '',
        emailUser: emailUser,
        idLocal: idLocal,
        observacionLocal: '',
        observacionRemota: '',
        direccion: '',
        idColonia: 0,
        colonia: '',
        idPoblacion: 0,
        poblacion: '',
        latitud: 0.0,
        longitud: 0.0,
        estatus: 'BORRADOR',
        fechaAtendio: '',
        fechaGenero: '',
        idCuenta: '',
        idTipoReporte: 0,
        tipoReporte: '',
        idPadron: 0,
      );
  factory Report.empty() => Report(
        idRemoto: '',
        emailUser: '',
        idLocal: '',
        observacionLocal: '',
        observacionRemota: '',
        direccion: '',
        idColonia: 0,
        colonia: '',
        idPoblacion: 0,
        poblacion: '',
        latitud: 0.0,
        longitud: 0.0,
        estatus: '',
        fechaAtendio: '',
        fechaGenero: '',
        idCuenta: '',
        idTipoReporte: 0,
        tipoReporte: '',
        idPadron: 0,
      );

  Report copyWith({
    String? idRemoto,
    String? emailUser,
    String? idLocal,
    String? observacionLocal,
    String? observacionRemota,
    String? direccion,
    int? idColonia,
    String? colonia,
    int? idPoblacion,
    String? poblacion,
    double? latitud,
    double? longitud,
    String? estatus,
    String? fechaAtendio,
    String? fechaGenero,
    String? idCuenta,
    int? idTipoReporte,
    String? tipoReporte,
    int? idPadron,
    String? fecha,
  }) =>
      Report(
        idRemoto: idRemoto ?? this.idRemoto,
        emailUser: emailUser ?? this.emailUser,
        idLocal: idLocal ?? this.idLocal,
        observacionLocal: observacionLocal ?? this.observacionLocal,
        observacionRemota: observacionRemota ?? this.observacionRemota,
        direccion: direccion ?? this.direccion,
        idColonia: idColonia ?? this.idColonia,
        colonia: colonia ?? this.colonia,
        idPoblacion: idPoblacion ?? this.idPoblacion,
        poblacion: poblacion ?? this.poblacion,
        latitud: latitud ?? this.latitud,
        longitud: longitud ?? this.longitud,
        estatus: estatus ?? this.estatus,
        fechaAtendio: fechaAtendio ?? this.fechaAtendio,
        fechaGenero: fechaGenero ?? this.fechaGenero,
        idCuenta: idCuenta ?? this.idCuenta,
        idTipoReporte: idTipoReporte ?? this.idTipoReporte,
        tipoReporte: tipoReporte ?? this.tipoReporte,
        idPadron: idPadron ?? this.idPadron,
      );

  Map<String, dynamic> get toJson => {
        "id_remoto": idRemoto,
        "email_user": emailUser,
        "id_local": idLocal,
        "observa_a": observacionLocal,
        "observa_b": observacionRemota,
        "direccion": direccion,
        "id_colonia": idColonia,
        "colonia": colonia,
        "id_poblacion": idPoblacion,
        "poblacion": poblacion,
        "latitud": latitud.toString(),
        "longitud": longitud.toString(),
        "estatus": estatus,
        "fecha_atendio": fechaAtendio,
        "fecha_genero": fechaGenero,
        "id_cuenta": idCuenta,
        "id_tipo_reporte": idTipoReporte,
        "reporte": tipoReporte,
        "id_padron": idPadron,
      };
}
