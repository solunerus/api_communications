class ArquosUser {
  ArquosUser({
    required this.idUsuario,
    required this.usuario,
    required this.descripcion,
    required this.success,
    required this.requestToken,
    required this.expiresAt,
  });

  final String idUsuario;

  final String usuario;

  final String descripcion;

  final bool success;

  final String requestToken;

  final String expiresAt;

  Map<String, dynamic> get toJson => {
        "id_usuario": idUsuario,
        "usuario": usuario,
        "descripcion": descripcion,
        "success": success,
        "request_token": requestToken,
        "expires_at": expiresAt,
      };

  factory ArquosUser.fromJson(Map<String, dynamic> json) => ArquosUser(
        idUsuario: json["id_usuario"],
        usuario: json["usuario"] ?? '',
        descripcion: json["descripcion"],
        success: json["success"],
        requestToken: json["request_token"],
        expiresAt: json["expires_at"],
      );

  factory ArquosUser.getDefault() => ArquosUser(
        idUsuario: '',
        usuario: '',
        descripcion: '',
        success: false,
        requestToken: '',
        expiresAt: '',
      );

  ArquosUser copyWith({
    String? idUsuario,
    String? usuario,
    String? descripcion,
    bool? success,
    String? requestToken,
    String? expiresAt,
  }) =>
      ArquosUser(
        idUsuario: idUsuario ?? this.idUsuario,
        usuario: usuario ?? this.usuario,
        descripcion: descripcion ?? this.descripcion,
        success: success ?? this.success,
        requestToken: requestToken ?? this.requestToken,
        expiresAt: expiresAt ?? this.expiresAt,
      );
}
