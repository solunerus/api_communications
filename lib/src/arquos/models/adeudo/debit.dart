import 'debit_item.dart';

export 'debit_item.dart';

class Debit {
  Debit({
    required this.contrato,
    required this.letras,
    required this.recibo,
  });

  final List<DebitItem> contrato;

  final List<DebitItem> letras;

  final List<DebitItem> recibo;

  Map<String, dynamic> get toJson => {
        "contrato": List<dynamic>.from(contrato.map((x) => x.toJson)),
        "letras": List<dynamic>.from(letras.map((x) => x.toJson)),
        "recibo": List<dynamic>.from(recibo.map((x) => x.toJson)),
      };

  factory Debit.fromJson(Map<String, dynamic> json) => Debit(
        contrato: List<DebitItem>.from(
          json["contrato"].map((x) => DebitItem.fromJson(x)),
        ),
        letras: List<DebitItem>.from(
          json["letras"].map((x) => DebitItem.fromJson(x)),
        ),
        recibo: List<DebitItem>.from(
          json["recibo"].map((x) => DebitItem.fromJson(x)),
        ),
      );

  factory Debit.getDefault() => Debit(
        contrato: <DebitItem>[],
        letras: <DebitItem>[],
        recibo: <DebitItem>[],
      );

  Debit copyWith({
    List<DebitItem>? contrato,
    List<DebitItem>? letras,
    List<DebitItem>? recibo,
  }) =>
      Debit(
        contrato: contrato ?? this.contrato,
        letras: letras ?? this.letras,
        recibo: recibo ?? this.recibo,
      );
}
