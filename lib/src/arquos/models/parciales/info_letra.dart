class InfoLetra {
  InfoLetra({
    required this.id,
    required this.importe,
    required this.letra,
    required this.vencimiento,
  });

  final int id;
  final double importe;
  final String letra;
  final String vencimiento;

  InfoLetra copyWith({
    int? id,
    double? importe,
    String? letra,
    String? vencimiento,
  }) =>
      InfoLetra(
        id: id ?? this.id,
        importe: importe ?? this.importe,
        letra: letra ?? this.letra,
        vencimiento: vencimiento ?? this.vencimiento,
      );

  factory InfoLetra.fromJson(Map<String, dynamic> json) => InfoLetra(
        id: json["id"],
        importe: json["importe"],
        letra: json["letra"],
        vencimiento: json["vencimiento"],
      );

  factory InfoLetra.getDefault() => InfoLetra(
        id: 0,
        importe: 0,
        letra: "",
        vencimiento: '',
      );

  Map<String, dynamic> get toJson => {
        "id": id,
        "importe": importe,
        "letra": letra,
        "vencimiento": vencimiento.replaceAll('-', ''),
      };
}
