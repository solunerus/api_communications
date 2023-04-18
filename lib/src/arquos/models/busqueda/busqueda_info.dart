import '../../utils/space_remove.dart';
import 'busqueda.dart';

class BusquedaInfo extends Busqueda {
  BusquedaInfo({
    required super.razonSocial,
    required super.direccion,
    required super.colonia,
    required super.calle,
    required super.medidor,
    required super.localizacion,
    required super.nomComercial,
    required this.poblacion,
    required this.numInterior,
    required this.any,
  });

  final String poblacion;

  final String numInterior;

  final String any;

  Map<String, dynamic> get toJson => {
        "razon_social": super.razonSocial,
        "direccion": super.direccion,
        "colonia": super.colonia,
        "calle": super.calle,
        "medidor": super.medidor,
        "localizacion": super.localizacion,
        "nom_comercial": super.nomComercial,
        "poblacion": poblacion,
        "num_interior": numInterior,
        "any": any,
      };

  factory BusquedaInfo.fromJson(Map<String, dynamic> json) => BusquedaInfo(
        razonSocial: spaceRemove(json["razon_social"]),
        direccion: spaceRemove(json["direccion"]),
        colonia: spaceRemove(json["colonia"]),
        calle: spaceRemove(json["calle"]),
        medidor: spaceRemove(json["medidor"]),
        localizacion: spaceRemove(json["localizacion"]),
        nomComercial: spaceRemove(json["nom_comercial"]),
        poblacion: spaceRemove(json["poblacion"]),
        numInterior: spaceRemove(json["num_interior"]),
        any: spaceRemove(json["any"]),
      );

  BusquedaInfo copyWith({
    String? razonSocial,
    String? direccion,
    String? colonia,
    String? calle,
    String? medidor,
    String? localizacion,
    String? nomComercial,
    String? poblacion,
    String? numInterior,
    String? any,
  }) =>
      BusquedaInfo(
        razonSocial: razonSocial ?? super.razonSocial,
        direccion: direccion ?? super.direccion,
        colonia: colonia ?? super.colonia,
        calle: calle ?? super.calle,
        medidor: medidor ?? super.medidor,
        localizacion: localizacion ?? super.localizacion,
        nomComercial: nomComercial ?? super.nomComercial,
        poblacion: poblacion ?? this.poblacion,
        numInterior: numInterior ?? this.numInterior,
        any: any ?? this.any,
      );
}
