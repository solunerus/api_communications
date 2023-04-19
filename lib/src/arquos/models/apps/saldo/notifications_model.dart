class Notification {
  Notification({
    required this.idPadron,
    required this.mensaje,
    required this.titulo,
    required this.veces,
  });

  final int idPadron;
  final String mensaje;
  final String titulo;
  final int veces;

  Notification copyWith({
    int? idPadron,
    String? mensaje,
    String? titulo,
    int? veces,
  }) =>
      Notification(
        idPadron: idPadron ?? this.idPadron,
        mensaje: mensaje ?? this.mensaje,
        titulo: titulo ?? this.titulo,
        veces: veces ?? this.veces,
      );

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        idPadron: json["id_padron"],
        mensaje: json["mensaje"],
        titulo: json["titulo"],
        veces: json["veces"],
      );

  Map<String, dynamic> get toJson => {
        "id_padron": idPadron,
        "mensaje": mensaje,
        "titulo": titulo,
        "veces": veces,
      };
}
