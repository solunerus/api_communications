class CuentaRfc {
  CuentaRfc({
    required this.al,
    required this.codigoPostal,
    required this.colonia,
    required this.correoElectronico,
    required this.curpRegimen,
    required this.cveFormaPago,
    required this.cveMetodoPago,
    required this.cveRegimen,
    required this.cveUsoCfdi,
    required this.entidadFederativa,
    required this.fechaAltaRegimen,
    required this.fechaInicioOp,
    required this.fechaInsert,
    required this.fechaNacimientoConstitucion,
    required this.fechaUltimoCambio,
    required this.id,
    required this.idCif,
    required this.idCuenta,
    required this.idPadron,
    required this.idUser,
    required this.municipioDelegacion,
    required this.nombreVialidad,
    required this.numeroExterior,
    required this.numeroInterior,
    required this.razonSocial,
    required this.regimen,
    required this.rfc,
    required this.situacionContribuyente,
    required this.telefono,
    required this.tipoVialidad,
  });

  final String al;
  final String codigoPostal;
  final String colonia;
  final String correoElectronico;
  final String curpRegimen;
  final String cveFormaPago;
  final String cveMetodoPago;
  final String cveRegimen;
  final String cveUsoCfdi;
  final String entidadFederativa;
  final String fechaAltaRegimen;
  final String fechaInicioOp;
  final String fechaInsert;
  final String fechaNacimientoConstitucion;
  final String fechaUltimoCambio;
  final int id;
  final String idCif;
  final String idCuenta;
  final int idPadron;
  final int idUser;
  final String municipioDelegacion;
  final String nombreVialidad;
  final String numeroExterior;
  final String numeroInterior;
  final String razonSocial;
  final String regimen;
  final String rfc;
  final String situacionContribuyente;
  final String telefono;
  final String tipoVialidad;

  CuentaRfc copyWith({
    String? al,
    String? codigoPostal,
    String? colonia,
    String? correoElectronico,
    String? curpRegimen,
    String? cveFormaPago,
    String? cveMetodoPago,
    String? cveRegimen,
    String? cveUsoCfdi,
    String? entidadFederativa,
    String? fechaAltaRegimen,
    String? fechaInicioOp,
    String? fechaInsert,
    String? fechaNacimientoConstitucion,
    String? fechaUltimoCambio,
    int? id,
    String? idCif,
    String? idCuenta,
    int? idPadron,
    int? idUser,
    String? municipioDelegacion,
    String? nombreVialidad,
    String? numeroExterior,
    String? numeroInterior,
    String? razonSocial,
    String? regimen,
    String? rfc,
    String? situacionContribuyente,
    String? telefono,
    String? tipoVialidad,
  }) =>
      CuentaRfc(
        al: al ?? this.al,
        codigoPostal: codigoPostal ?? this.codigoPostal,
        colonia: colonia ?? this.colonia,
        correoElectronico: correoElectronico ?? this.correoElectronico,
        curpRegimen: curpRegimen ?? this.curpRegimen,
        cveFormaPago: cveFormaPago ?? this.cveFormaPago,
        cveMetodoPago: cveMetodoPago ?? this.cveMetodoPago,
        cveRegimen: cveRegimen ?? this.cveRegimen,
        cveUsoCfdi: cveUsoCfdi ?? this.cveUsoCfdi,
        entidadFederativa: entidadFederativa ?? this.entidadFederativa,
        fechaAltaRegimen: fechaAltaRegimen ?? this.fechaAltaRegimen,
        fechaInicioOp: fechaInicioOp ?? this.fechaInicioOp,
        fechaInsert: fechaInsert ?? this.fechaInsert,
        fechaNacimientoConstitucion:
            fechaNacimientoConstitucion ?? this.fechaNacimientoConstitucion,
        fechaUltimoCambio: fechaUltimoCambio ?? this.fechaUltimoCambio,
        id: id ?? this.id,
        idCif: idCif ?? this.idCif,
        idCuenta: idCuenta ?? this.idCuenta,
        idPadron: idPadron ?? this.idPadron,
        idUser: idUser ?? this.idUser,
        municipioDelegacion: municipioDelegacion ?? this.municipioDelegacion,
        nombreVialidad: nombreVialidad ?? this.nombreVialidad,
        numeroExterior: numeroExterior ?? this.numeroExterior,
        numeroInterior: numeroInterior ?? this.numeroInterior,
        razonSocial: razonSocial ?? this.razonSocial,
        regimen: regimen ?? this.regimen,
        rfc: rfc ?? this.rfc,
        situacionContribuyente:
            situacionContribuyente ?? this.situacionContribuyente,
        telefono: telefono ?? this.telefono,
        tipoVialidad: tipoVialidad ?? this.tipoVialidad,
      );

  factory CuentaRfc.fromJson(Map<String, dynamic> json) => CuentaRfc(
        al: json["al"],
        codigoPostal: json["codigo_postal"],
        colonia: json["colonia"],
        correoElectronico: json["correo_electronico"],
        curpRegimen: json["curp_regimen"],
        cveFormaPago: json["cve_forma_pago"],
        cveMetodoPago: json["cve_metodo_pago"],
        cveRegimen: json["cve_regimen"],
        cveUsoCfdi: json["cve_uso_cfdi"],
        entidadFederativa: json["entidad_federativa"],
        fechaAltaRegimen: json["fecha_alta_regimen"],
        fechaInicioOp: json["fecha_inicio_op"],
        fechaInsert: json["fecha_insert"],
        fechaNacimientoConstitucion: json["fecha_nacimiento_constitucion"],
        fechaUltimoCambio: json["fecha_ultimo_cambio"],
        id: json["id"],
        idCif: json["id_cif"],
        idCuenta: json["id_cuenta"].toString(),
        idPadron: json["id_padron"],
        idUser: json["id_user"],
        municipioDelegacion: json["municipio_delegacion"],
        nombreVialidad: json["nombre_vialidad"],
        numeroExterior: json["numero_exterior"],
        numeroInterior: json["numero_interior"],
        razonSocial: json["razon_social"],
        regimen: json["regimen"],
        rfc: json["rfc"],
        situacionContribuyente: json["situacion_contribuyente"],
        telefono: json["telefono"],
        tipoVialidad: json["tipo_vialidad"],
      );

  factory CuentaRfc.getDefault() => CuentaRfc(
        al: '',
        codigoPostal: '',
        colonia: '',
        correoElectronico: '',
        curpRegimen: '',
        cveFormaPago: '',
        cveMetodoPago: '',
        cveRegimen: '',
        cveUsoCfdi: '',
        entidadFederativa: '',
        fechaAltaRegimen: '',
        fechaInicioOp: '',
        fechaInsert: '',
        fechaNacimientoConstitucion: '',
        fechaUltimoCambio: '',
        id: 0,
        idCif: '',
        idCuenta: '',
        idPadron: 0,
        idUser: 0,
        municipioDelegacion: '',
        nombreVialidad: '',
        numeroExterior: '',
        numeroInterior: '',
        razonSocial: '',
        regimen: '',
        rfc: '',
        situacionContribuyente: '',
        telefono: '',
        tipoVialidad: '',
      );

  Map<String, dynamic> get toJson => {
        "al": al,
        "codigo_postal": codigoPostal,
        "colonia": colonia,
        "correo_electronico": correoElectronico,
        "curp_regimen": curpRegimen,
        "cve_forma_pago": cveFormaPago,
        "cve_metodo_pago": cveMetodoPago,
        "cve_regimen": cveRegimen,
        "cve_uso_cfdi": cveUsoCfdi,
        "entidad_federativa": entidadFederativa,
        "fecha_alta_regimen": fechaAltaRegimen,
        "fecha_inicio_op": fechaInicioOp,
        "fecha_insert": fechaInsert,
        "fecha_nacimiento_constitucion": fechaNacimientoConstitucion,
        "fecha_ultimo_cambio": fechaUltimoCambio,
        "id": id,
        "id_cif": idCif,
        "id_cuenta": idCuenta,
        "id_padron": idPadron,
        "id_user": idUser,
        "municipio_delegacion": municipioDelegacion,
        "nombre_vialidad": nombreVialidad,
        "numero_exterior": numeroExterior,
        "numero_interior": numeroInterior,
        "razon_social": razonSocial,
        "regimen": regimen,
        "rfc": rfc,
        "situacion_contribuyente": situacionContribuyente,
        "telefono": telefono,
        "tipo_vialidad": tipoVialidad,
      };
}
