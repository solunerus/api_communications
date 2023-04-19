class DatosGenerales {
  DatosGenerales({
    required this.codigoPostal,
    required this.colonia,
    required this.curp,
    required this.direccion,
    required this.email,
    required this.estatus,
    required this.idCuenta,
    required this.idMedidor,
    required this.idPadron,
    required this.latitud,
    required this.localidad,
    required this.localizacion,
    required this.longitud,
    required this.nomComercial,
    required this.razonSocial,
    required this.reciboMail,
    required this.situacion,
    required this.telefono1,
    required this.telefono2,
    required this.telefono3,
  });

  final String codigoPostal;
  final String colonia;
  final String curp;
  final String direccion;
  final String email;
  final String estatus;
  final String idCuenta;
  final String idMedidor;
  final int idPadron;
  final String latitud;
  final String localidad;
  final String localizacion;
  final String longitud;
  final String nomComercial;
  final String razonSocial;
  final bool reciboMail;
  final String situacion;
  final String telefono1;
  final String telefono2;
  final String telefono3;

  DatosGenerales copyWith({
    String? codigoPostal,
    String? colonia,
    String? curp,
    String? direccion,
    String? email,
    String? estatus,
    String? idCuenta,
    String? idMedidor,
    int? idPadron,
    String? latitud,
    String? localidad,
    String? localizacion,
    String? longitud,
    String? nomComercial,
    String? razonSocial,
    bool? reciboMail,
    String? situacion,
    String? telefono1,
    String? telefono2,
    String? telefono3,
  }) =>
      DatosGenerales(
        codigoPostal: codigoPostal ?? this.codigoPostal,
        colonia: colonia ?? this.colonia,
        curp: curp ?? this.curp,
        direccion: direccion ?? this.direccion,
        email: email ?? this.email,
        estatus: estatus ?? this.estatus,
        idCuenta: idCuenta ?? this.idCuenta,
        idMedidor: idMedidor ?? this.idMedidor,
        idPadron: idPadron ?? this.idPadron,
        latitud: latitud ?? this.latitud,
        localidad: localidad ?? this.localidad,
        localizacion: localizacion ?? this.localizacion,
        longitud: longitud ?? this.longitud,
        nomComercial: nomComercial ?? this.nomComercial,
        razonSocial: razonSocial ?? this.razonSocial,
        reciboMail: reciboMail ?? this.reciboMail,
        situacion: situacion ?? this.situacion,
        telefono1: telefono1 ?? this.telefono1,
        telefono2: telefono2 ?? this.telefono2,
        telefono3: telefono3 ?? this.telefono3,
      );

  factory DatosGenerales.fromJson(Map<String, dynamic> json) => DatosGenerales(
        codigoPostal: json["codigo_postal"],
        colonia: json["colonia"],
        curp: json["curp"],
        direccion: json["direccion"],
        email: json["email"],
        estatus: json["estatus"],
        idCuenta: json["id_cuenta"].toString(),
        idMedidor: json["id_medidor"],
        idPadron: json["id_padron"],
        latitud: json["latitud"],
        localidad: json["localidad"],
        localizacion: json["localizacion"],
        longitud: json["longitud"],
        nomComercial: json["nom_comercial"],
        razonSocial: json["razon_social"],
        reciboMail: json["recibo_mail"],
        situacion: json["situacion"],
        telefono1: json["telefono1"],
        telefono2: json["telefono2"],
        telefono3: json["telefono3"],
      );

  factory DatosGenerales.getDefault() => DatosGenerales(
        codigoPostal: "",
        colonia: "",
        curp: "",
        direccion: "",
        email: "",
        estatus: "",
        idCuenta: '',
        idMedidor: "",
        idPadron: 0,
        latitud: "",
        localidad: "",
        localizacion: "",
        longitud: "",
        nomComercial: "",
        razonSocial: "",
        reciboMail: false,
        situacion: "",
        telefono1: "",
        telefono2: "",
        telefono3: "",
      );

  Map<String, dynamic> get toJson => {
        "codigo_postal": codigoPostal,
        "colonia": colonia,
        "curp": curp,
        "direccion": direccion,
        "email": email,
        "estatus": estatus,
        "id_cuenta": idCuenta,
        "id_medidor": idMedidor,
        "id_padron": idPadron,
        "latitud": latitud,
        "localidad": localidad,
        "localizacion": localizacion,
        "longitud": longitud,
        "nom_comercial": nomComercial,
        "razon_social": razonSocial,
        "recibo_mail": reciboMail,
        "situacion": situacion,
        "telefono1": telefono1,
        "telefono2": telefono2,
        "telefono3": telefono3,
      };
}
