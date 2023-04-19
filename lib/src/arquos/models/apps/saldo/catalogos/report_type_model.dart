class ReportTypeM {
  ReportTypeM({
    required this.idTipoReporte,
    required this.descripcion,
  });

  final int idTipoReporte;
  final String descripcion;

  factory ReportTypeM.fromJson(Map<String, dynamic> json) => ReportTypeM(
        idTipoReporte: json["id_tipo_reporte"],
        descripcion: json["descripcion"],
      );

  ReportTypeM copyWith({
    int? idTipoReporte,
    String? descripcion,
  }) =>
      ReportTypeM(
        idTipoReporte: idTipoReporte ?? this.idTipoReporte,
        descripcion: descripcion ?? this.descripcion,
      );

  Map<String, dynamic> get toJson => {
        "id_tipo_reporte": idTipoReporte,
        "descripcion": descripcion,
      };
}
