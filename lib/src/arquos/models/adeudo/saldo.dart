import 'calificacion.dart';
import 'debit_item.dart';

export 'calificacion.dart';
export 'debit_item.dart';

class Saldo {
  Saldo({
    required this.contrato,
    required this.letras,
    required this.recibo,
    required this.calificacion,
    required this.totalDebit,
  });
  final List<DebitItem> contrato;
  final List<DebitItem> letras;
  final List<DebitItem> recibo;
  final Calificacion calificacion;
  final double totalDebit;

  factory Saldo.getDefault() => Saldo(
        contrato: <DebitItem>[],
        letras: <DebitItem>[],
        recibo: <DebitItem>[],
        calificacion: Calificacion.getDefault(),
        totalDebit: 0.0,
      );
}
