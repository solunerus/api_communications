class Token {
  Token({
    required this.success,
    required this.requestToken,
    required this.expiresAt,
  });

  /// Response from the API
  final bool success;

  /// Is the token to be used
  final String requestToken;

  /// When the token expires
  final String expiresAt;

  /// Convert the object to a json
  Map<String, dynamic> get toJson => {
        "success": success,
        "request_token": requestToken,
        "expires_at": expiresAt,
      };

  /// Convert the json to an object
  factory Token.fromJson(Map<String, dynamic> json) => Token(
        success: json["success"],
        requestToken: json["request_token"],
        expiresAt: json["expires_at"],
      );

  /// Default constructor
  factory Token.getDefault() => Token(
        success: false,
        requestToken: '',
        expiresAt: '',
      );

  /// Copy the object
  Token copyWith({
    bool? success,
    String? requestToken,
    String? expiresAt,
  }) =>
      Token(
        success: success ?? this.success,
        requestToken: requestToken ?? this.requestToken,
        expiresAt: expiresAt ?? this.expiresAt,
      );
}
