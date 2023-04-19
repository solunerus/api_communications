import 'det_parcial_model.dart';

class Parcial {
  Parcial({
    required this.abono,
    required this.autorizo,
    required this.cancelo,
    required this.cargo,
    required this.fechaCancelo,
    required this.fechaGenero,
    required this.idFolio,
    required this.idPadron,
    required this.importeTiie,
    required this.importeInicial,
    required this.importeVencido,
    required this.importeXvencer,
    required this.incremento,
    required this.letras,
    required this.letrasVencido,
    required this.letrasXvencer,
    required this.mesesRezago,
    required this.observaA,
    required this.observaC,
    required this.porElUsuario,
    required this.saldo,
    required this.tipoparcial,
    required this.detParcial,
  });

  final double abono;
  final String autorizo;
  final String cancelo;
  final double cargo;
  final String fechaCancelo;
  final String fechaGenero;
  final String idFolio;
  final int idPadron;
  final double importeTiie;
  final double importeInicial;
  final double importeVencido;
  final double importeXvencer;
  final double incremento;
  final int letras;
  final int letrasVencido;
  final int letrasXvencer;
  final int mesesRezago;
  final String observaA;
  final String observaC;
  final String porElUsuario;
  final double saldo;
  final String tipoparcial;
  final List<DetParcial> detParcial;

  Parcial copyWith({
    double? abono,
    String? autorizo,
    String? cancelo,
    double? cargo,
    String? fechaCancelo,
    String? fechaGenero,
    String? idFolio,
    int? idPadron,
    double? importeTiie,
    double? importeInicial,
    double? importeVencido,
    double? importeXvencer,
    double? incremento,
    int? letras,
    int? letrasVencido,
    int? letrasXvencer,
    int? mesesRezago,
    String? observaA,
    String? observaC,
    String? porElUsuario,
    double? saldo,
    String? tipoparcial,
    List<DetParcial>? detParcial,
  }) =>
      Parcial(
        abono: abono ?? this.abono,
        autorizo: autorizo ?? this.autorizo,
        cancelo: cancelo ?? this.cancelo,
        cargo: cargo ?? this.cargo,
        fechaCancelo: fechaCancelo ?? this.fechaCancelo,
        fechaGenero: fechaGenero ?? this.fechaGenero,
        idFolio: idFolio ?? this.idFolio,
        idPadron: idPadron ?? this.idPadron,
        importeTiie: importeTiie ?? this.importeTiie,
        importeInicial: importeInicial ?? this.importeInicial,
        importeVencido: importeVencido ?? this.importeVencido,
        importeXvencer: importeXvencer ?? this.importeXvencer,
        incremento: incremento ?? this.incremento,
        letras: letras ?? this.letras,
        letrasVencido: letrasVencido ?? this.letrasVencido,
        letrasXvencer: letrasXvencer ?? this.letrasXvencer,
        mesesRezago: mesesRezago ?? this.mesesRezago,
        observaA: observaA ?? this.observaA,
        observaC: observaC ?? this.observaC,
        porElUsuario: porElUsuario ?? this.porElUsuario,
        saldo: saldo ?? this.saldo,
        tipoparcial: tipoparcial ?? this.tipoparcial,
        detParcial: detParcial ?? this.detParcial,
      );

  factory Parcial.fromJson(Map<String, dynamic> json) => Parcial(
        abono: json["abono"],
        autorizo: json["autorizo"],
        cancelo: json["cancelo"],
        cargo: json["cargo"].toDouble(),
        fechaCancelo: json["fecha_cancelo"],
        fechaGenero: json["fecha_genero"],
        idFolio: json["id_folio"],
        idPadron: json["id_padron"],
        importeTiie: json["importeTIIE"].toDouble(),
        importeInicial: json["importe_inicial"].toDouble(),
        importeVencido: json["importe_vencido"],
        importeXvencer: json["importe_xvencer"],
        incremento: json["incremento"].toDouble(),
        letras: json["letras"],
        letrasVencido: json["letras_vencido"],
        letrasXvencer: json["letras_xvencer"],
        mesesRezago: json["meses_rezago"],
        observaA: json["observa_a"],
        observaC: json["observa_c"],
        porElUsuario: json["por_el_usuario"],
        saldo: json["saldo"],
        tipoparcial: json["tipoparcial"],
        detParcial: List<DetParcial>.from(
            json["detail"].map((x) => DetParcial.fromJson(x))),
      );

  Map<String, dynamic> get toJson => {
        "abono": abono,
        "autorizo": autorizo,
        "cancelo": cancelo,
        "cargo": cargo,
        "fecha_cancelo": fechaCancelo,
        "fecha_genero": fechaGenero,
        "id_folio": idFolio,
        "id_padron": idPadron,
        "importeTIIE": importeTiie,
        "importe_inicial": importeInicial,
        "importe_vencido": importeVencido,
        "importe_xvencer": importeXvencer,
        "incremento": incremento,
        "letras": letras,
        "letras_vencido": letrasVencido,
        "letras_xvencer": letrasXvencer,
        "meses_rezago": mesesRezago,
        "observa_a": observaA,
        "observa_c": observaC,
        "por_el_usuario": porElUsuario,
        "saldo": saldo,
        "tipoparcial": tipoparcial,
        "detail": List<dynamic>.from(detParcial.map((x) => x.toJson)),
      };
}
