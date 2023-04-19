import 'info_letra.dart';

class CalcularParcial {
  CalcularParcial({
    required this.adeudo,
    required this.idTipoparcial,
    required this.importe,
    required this.letras,
    required this.plazos,
    required this.porcentaje,
    required this.resta,
  });

  final double adeudo;
  final int idTipoparcial;
  final double importe;
  final List<InfoLetra> letras;
  final int plazos;
  final double porcentaje;
  final double resta;

  CalcularParcial copyWith({
    double? adeudo,
    int? idTipoparcial,
    double? importe,
    List<InfoLetra>? letras,
    int? plazos,
    double? porcentaje,
    double? resta,
  }) =>
      CalcularParcial(
        adeudo: adeudo ?? this.adeudo,
        idTipoparcial: idTipoparcial ?? this.idTipoparcial,
        importe: importe ?? this.importe,
        letras: letras ?? this.letras,
        plazos: plazos ?? this.plazos,
        porcentaje: porcentaje ?? this.porcentaje,
        resta: resta ?? this.resta,
      );

  factory CalcularParcial.fromJson(Map<String, dynamic> json) =>
      CalcularParcial(
        adeudo: json["adeudo"].toDouble(),
        idTipoparcial: json["id_tipoparcial"],
        importe: json["importe"],
        letras: List<InfoLetra>.from(
            json["letras"].map((x) => InfoLetra.fromJson(x))),
        plazos: json["plazos"],
        porcentaje: json["porcentaje"].toDouble(),
        resta: json["resta"].toDouble(),
      );

  factory CalcularParcial.getDefault() => CalcularParcial(
        adeudo: 0.0,
        idTipoparcial: 0,
        importe: 0,
        letras: [],
        plazos: 0,
        porcentaje: 0.0,
        resta: 0.0,
      );

  Map<String, dynamic> get toJson => {
        "adeudo": adeudo,
        "id_tipoparcial": idTipoparcial,
        "importe": importe,
        "letras": List<dynamic>.from(letras.map((x) => x.toJson)),
        "plazos": plazos,
        "porcentaje": porcentaje,
        "resta": resta,
      };
}
