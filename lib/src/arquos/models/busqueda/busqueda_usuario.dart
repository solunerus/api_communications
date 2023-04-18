import '../../utils/space_remove.dart';
import 'busqueda.dart';

class BusquedaUsuario extends Busqueda {
  BusquedaUsuario({
    required super.razonSocial,
    required super.direccion,
    required super.colonia,
    required super.calle,
    required super.medidor,
    required super.localizacion,
    required super.nomComercial,
    required this.estatus,
    required this.idCuenta,
    required this.idPadron,
    required this.localidad,
    required this.ok,
    required this.telefono,
  });

  final String estatus;

  final String idCuenta;

  final int idPadron;

  final String localidad;

  final int ok;

  final String telefono;

  Map<String, dynamic> get toJson => {
        "razon_social": super.razonSocial,
        "direccion": super.direccion,
        "colonia": super.colonia,
        "calle_ppal": super.calle,
        "id_medidor": super.medidor,
        "localizacion": super.localizacion,
        "nom_comercial": super.nomComercial,
        "estatus": estatus,
        "id_cuenta": idCuenta,
        "id_padron": idPadron,
        "localidad": localidad,
        "ok": ok,
        "telefono": telefono,
      };

  factory BusquedaUsuario.fromJson(Map<String, dynamic> json) =>
      BusquedaUsuario(
        razonSocial: spaceRemove(json["razon_social"]),
        direccion: spaceRemove(json["direccion"]),
        colonia: spaceRemove(json["colonia"]),
        calle: spaceRemove(json["calle_ppal"]),
        medidor: spaceRemove(json["id_medidor"]),
        localizacion: spaceRemove(json["localizacion"]),
        nomComercial: spaceRemove(json["nom_comercial"]),
        estatus: spaceRemove(json["estatus"]),
        idCuenta: json["id_cuenta"].toString(),
        idPadron: json["id_padron"],
        localidad: spaceRemove(json["localidad"]),
        ok: json["ok"],
        telefono: spaceRemove(json["telefono"]),
      );

  factory BusquedaUsuario.getDefault() => BusquedaUsuario(
        razonSocial: "",
        direccion: "",
        colonia: "",
        calle: "",
        medidor: "",
        localizacion: "",
        nomComercial: "",
        estatus: "",
        idCuenta: "",
        idPadron: 0,
        localidad: "",
        ok: 0,
        telefono: "",
      );

  BusquedaUsuario copyWith({
    String? razonSocial,
    String? direccion,
    String? colonia,
    String? calle,
    String? medidor,
    String? localizacion,
    String? nomComercial,
    String? estatus,
    String? idCuenta,
    int? idPadron,
    String? localidad,
    int? ok,
    String? telefono,
  }) =>
      BusquedaUsuario(
        razonSocial: razonSocial ?? this.razonSocial,
        direccion: direccion ?? this.direccion,
        colonia: colonia ?? this.colonia,
        calle: calle ?? this.calle,
        medidor: medidor ?? this.medidor,
        localizacion: localizacion ?? this.localizacion,
        nomComercial: nomComercial ?? this.nomComercial,
        estatus: estatus ?? this.estatus,
        idCuenta: idCuenta ?? this.idCuenta,
        idPadron: idPadron ?? this.idPadron,
        localidad: localidad ?? this.localidad,
        ok: ok ?? this.ok,
        telefono: telefono ?? this.telefono,
      );
}
