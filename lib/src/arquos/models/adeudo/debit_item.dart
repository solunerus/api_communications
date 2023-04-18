import '../../enums/type_debit_item.dart';

export '../../enums/type_debit_item.dart';

class DebitItem {
  DebitItem({
    required this.descripcion,
    this.esVencido,
    required this.idPadron,
    required this.idRow,
    required this.subtotal,
    required this.iva,
    required this.total,
    required this.tipo,
  });

  final String descripcion;
  final bool? esVencido;
  final int idPadron;
  final int idRow;
  final double subtotal;
  final double iva;
  final double total;
  final TypeDebitItem tipo;

  DebitItem copyWith({
    String? descripcion,
    bool? esVencido,
    int? idPadron,
    int? idRow,
    double? subtotal,
    double? iva,
    double? total,
    TypeDebitItem? tipo,
  }) =>
      DebitItem(
        descripcion: descripcion ?? this.descripcion,
        esVencido: esVencido ?? this.esVencido,
        idPadron: idPadron ?? this.idPadron,
        idRow: idRow ?? this.idRow,
        subtotal: subtotal ?? this.subtotal,
        iva: iva ?? this.iva,
        total: total ?? this.total,
        tipo: tipo ?? this.tipo,
      );

  factory DebitItem.fromJson(Map<String, dynamic> json) => DebitItem(
      descripcion: json["descripcion"],
      esVencido: json["es_vencido"] == null ? null : (json["es_vencido"] == 1),
      idPadron: json["id_padron"],
      idRow: json["idrow"],
      subtotal: json["subtotal"].toDouble(),
      iva: json["iva"].toDouble(),
      total: json["total"].toDouble(),
      tipo: TypeDebitItem.values.firstWhere(
        (e) => e.name == json["tipo"],
      ));
  Map<String, dynamic> get toJson => {
        "descripcion": descripcion,
        "es_vencido": esVencido == null ? null : (esVencido! ? 1 : 0),
        "id_padron": idPadron,
        "idrow": idRow,
        "subtotal": subtotal,
        "iva": iva,
        "total": total,
        "tipo": tipo.name,
      };
}
