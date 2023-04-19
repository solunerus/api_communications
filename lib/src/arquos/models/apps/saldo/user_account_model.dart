class UserAccount {
  UserAccount({
    required this.alias,
    required this.emailUser,
    required this.calculo,
    required this.ciclo,
    required this.claseusuario,
    required this.consumoAct,
    required this.direccion,
    required this.email,
    required this.estatus,
    required this.fechaFacturaAct,
    required this.fechaLecturaAct,
    required this.fechaLecturaAnt,
    required this.fechaVencimiento,
    required this.giro,
    required this.idCuenta,
    required this.idMedidor,
    required this.idPadron,
    required this.latitud,
    required this.lecturaAct,
    required this.lecturaAnt,
    required this.localizacion,
    required this.longitud,
    required this.mesAdeudoAct,
    required this.nomComercial,
    required this.promedioAct,
    required this.razonSocial,
    required this.servicio,
    required this.situacion,
    required this.tarifafija,
    required this.telefono,
    required this.tipogrupo,
    required this.tipousuario,
    required this.fechaUltimoPago,
    required this.importeUltimoPago,
    required this.adeudo,
    required this.lineaCaptura,
    required this.codeOxxo,
  });
  final String? alias;
  final String emailUser;
  final String calculo;
  final String ciclo;
  final String claseusuario;
  final int consumoAct;
  final String direccion;
  final String email;
  final String estatus;
  final String fechaFacturaAct;
  final String fechaLecturaAct;
  final String fechaLecturaAnt;
  final String fechaVencimiento;
  final String giro;
  final String idCuenta;
  final String idMedidor;
  final int idPadron;
  final String latitud;
  final int lecturaAct;
  final int lecturaAnt;
  final String localizacion;
  final String longitud;
  final int mesAdeudoAct;
  final String nomComercial;
  final int promedioAct;
  final String razonSocial;
  final String servicio;
  final String situacion;
  final String tarifafija;
  final String telefono;
  final String tipogrupo;
  final String tipousuario;
  final String fechaUltimoPago;
  final double importeUltimoPago;
  final double adeudo; // adeudo
  final String lineaCaptura; // linea_captura
  final String codeOxxo; //code_oxxo

  UserAccount copyWith({
    String? alias,
    String? emailUser,
    String? calculo,
    String? ciclo,
    String? claseusuario,
    int? consumoAct,
    String? direccion,
    String? email,
    String? estatus,
    String? fechaFacturaAct,
    String? fechaLecturaAct,
    String? fechaLecturaAnt,
    String? fechaVencimiento,
    String? giro,
    String? idCuenta,
    String? idMedidor,
    int? idPadron,
    String? latitud,
    int? lecturaAct,
    int? lecturaAnt,
    String? localizacion,
    String? longitud,
    int? mesAdeudoAct,
    String? nomComercial,
    int? promedioAct,
    String? razonSocial,
    String? servicio,
    String? situacion,
    String? tarifafija,
    String? telefono,
    String? tipogrupo,
    String? tipousuario,
    String? fechaUltimoPago,
    double? importeUltimoPago,
    double? adeudo,
    String? lineaCaptura,
    String? codeOxxo,
  }) =>
      UserAccount(
        alias: alias ?? this.alias,
        emailUser: emailUser ?? this.emailUser,
        calculo: calculo ?? this.calculo,
        ciclo: ciclo ?? this.ciclo,
        claseusuario: claseusuario ?? this.claseusuario,
        consumoAct: consumoAct ?? this.consumoAct,
        direccion: direccion ?? this.direccion,
        email: email ?? this.email,
        estatus: estatus ?? this.estatus,
        fechaFacturaAct: fechaFacturaAct ?? this.fechaFacturaAct,
        fechaLecturaAct: fechaLecturaAct ?? this.fechaLecturaAct,
        fechaLecturaAnt: fechaLecturaAnt ?? this.fechaLecturaAnt,
        fechaVencimiento: fechaVencimiento ?? this.fechaVencimiento,
        giro: giro ?? this.giro,
        idCuenta: idCuenta ?? this.idCuenta,
        idMedidor: idMedidor ?? this.idMedidor,
        idPadron: idPadron ?? this.idPadron,
        latitud: latitud ?? this.latitud,
        lecturaAct: lecturaAct ?? this.lecturaAct,
        lecturaAnt: lecturaAnt ?? this.lecturaAnt,
        localizacion: localizacion ?? this.localizacion,
        longitud: longitud ?? this.longitud,
        mesAdeudoAct: mesAdeudoAct ?? this.mesAdeudoAct,
        nomComercial: nomComercial ?? this.nomComercial,
        promedioAct: promedioAct ?? this.promedioAct,
        razonSocial: razonSocial ?? this.razonSocial,
        servicio: servicio ?? this.servicio,
        situacion: situacion ?? this.situacion,
        tarifafija: tarifafija ?? this.tarifafija,
        telefono: telefono ?? this.telefono,
        tipogrupo: tipogrupo ?? this.tipogrupo,
        tipousuario: tipousuario ?? this.tipousuario,
        fechaUltimoPago: fechaUltimoPago ?? this.fechaUltimoPago,
        importeUltimoPago: importeUltimoPago ?? this.importeUltimoPago,
        adeudo: adeudo ?? this.adeudo,
        lineaCaptura: lineaCaptura ?? this.lineaCaptura,
        codeOxxo: codeOxxo ?? this.codeOxxo,
      );

  factory UserAccount.fromJson(Map<String, dynamic> json) => UserAccount(
        alias: json["alias"],
        emailUser: json["email_user"],
        calculo: json["calculo"],
        ciclo: json["ciclo"],
        claseusuario: json["claseusuario"],
        consumoAct: json["consumo_act"],
        direccion: json["direccion"],
        email: json["email"],
        estatus: json["estatus"],
        fechaFacturaAct: json["fecha_factura_act"],
        fechaLecturaAct: json["fecha_lectura_act"],
        fechaLecturaAnt: json["fecha_lectura_ant"],
        fechaVencimiento: json["fecha_vencimiento"],
        giro: json["giro"],
        idCuenta: json["id_cuenta"],
        idMedidor: json["id_medidor"],
        idPadron: json["id_padron"],
        latitud: json["latitud"],
        lecturaAct: json["lectura_act"],
        lecturaAnt: json["lectura_ant"],
        localizacion: json["localizacion"],
        longitud: json["longitud"],
        mesAdeudoAct: json["mes_adeudo_act"],
        nomComercial: json["nom_comercial"],
        promedioAct: json["promedio_act"],
        razonSocial: json["razon_social"],
        servicio: json["servicio"],
        situacion: json["situacion"],
        tarifafija: json["tarifafija"],
        telefono: json["telefono"],
        tipogrupo: json["tipogrupo"],
        tipousuario: json["tipousuario"],
        fechaUltimoPago: json["fecha_ultimo_pago"],
        importeUltimoPago: json["importe_ultimo_pago"],
        adeudo: json["adeudo"],
        lineaCaptura: json["linea_captura"],
        codeOxxo: json["code_oxxo"],
      );

  Map<String, dynamic> get toJson => {
        "alias": alias ?? '',
        "email_user": emailUser,
        "calculo": calculo,
        "ciclo": ciclo,
        "claseusuario": claseusuario,
        "consumo_act": consumoAct,
        "direccion": direccion,
        "email": email,
        "estatus": estatus,
        "fecha_factura_act": fechaFacturaAct,
        "fecha_lectura_act": fechaLecturaAct,
        "fecha_lectura_ant": fechaLecturaAnt,
        "fecha_vencimiento": fechaVencimiento,
        "giro": giro,
        "id_cuenta": idCuenta,
        "id_medidor": idMedidor,
        "id_padron": idPadron,
        "latitud": latitud,
        "lectura_act": lecturaAct,
        "lectura_ant": lecturaAnt,
        "localizacion": localizacion,
        "longitud": longitud,
        "mes_adeudo_act": mesAdeudoAct,
        "nom_comercial": nomComercial,
        "promedio_act": promedioAct,
        "razon_social": razonSocial,
        "servicio": servicio,
        "situacion": situacion,
        "tarifafija": tarifafija,
        "telefono": telefono,
        "tipogrupo": tipogrupo,
        "tipousuario": tipousuario,
        "fecha_ultimo_pago": fechaUltimoPago,
        "importe_ultimo_pago": importeUltimoPago,
        "adeudo": adeudo,
        "linea_captura": lineaCaptura,
        "code_oxxo": codeOxxo,
      };

  factory UserAccount.getDefault() => UserAccount(
        alias: '',
        emailUser: '',
        calculo: '',
        ciclo: '',
        claseusuario: '',
        consumoAct: 0,
        direccion: '',
        email: '',
        estatus: '',
        fechaFacturaAct: '',
        fechaLecturaAct: '',
        fechaLecturaAnt: '',
        fechaVencimiento: '',
        giro: '',
        idCuenta: '',
        idMedidor: '',
        idPadron: 0,
        latitud: '',
        lecturaAct: 0,
        lecturaAnt: 0,
        localizacion: '',
        longitud: '',
        mesAdeudoAct: 0,
        nomComercial: '',
        promedioAct: 0,
        razonSocial: '',
        servicio: '',
        situacion: '',
        tarifafija: '',
        telefono: '',
        tipogrupo: '',
        tipousuario: '',
        fechaUltimoPago: '',
        importeUltimoPago: 0,
        adeudo: 0,
        lineaCaptura: '',
        codeOxxo: '',
      );
}
