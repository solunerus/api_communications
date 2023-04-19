class DetParcial {
  DetParcial({
    required this.abono,
    required this.cargo,
    required this.estatus,
    required this.letra,
    required this.saldo,
    required this.vencimiento,
  });

  final double abono;
  final double cargo;
  final String estatus;
  final String letra;
  final double saldo;
  final String vencimiento;

  DetParcial copyWith({
    double? abono,
    double? cargo,
    String? estatus,
    String? letra,
    double? saldo,
    String? vencimiento,
  }) =>
      DetParcial(
        abono: abono ?? this.abono,
        cargo: cargo ?? this.cargo,
        estatus: estatus ?? this.estatus,
        letra: letra ?? this.letra,
        saldo: saldo ?? this.saldo,
        vencimiento: vencimiento ?? this.vencimiento,
      );

  factory DetParcial.fromJson(Map<String, dynamic> json) => DetParcial(
        abono: json["abono"],
        cargo: json["cargo"],
        estatus: json["estatus"],
        letra: json["letra"],
        saldo: json["saldo"],
        vencimiento: json["vencimiento"],
      );

  Map<String, dynamic> get toJson => {
        "abono": abono,
        "cargo": cargo,
        "estatus": estatus,
        "letra": letra,
        "saldo": saldo,
        "vencimiento": vencimiento,
      };
}
