import '../users/user.dart';

class AuthModel {
  AuthModel({
    required this.token,
    required this.user,
  });

  final String token;

  final User user;

  Map<String, dynamic> get toJson => {
        "token": token,
        "user": user.toJson,
      };

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        token: json["token"],
        user: User.fromJson(json["user"]),
      );

  factory AuthModel.getDefault() => AuthModel(
        token: '',
        user: User.getDefault(),
      );

  AuthModel copyWith({
    String? token,
    User? user,
  }) =>
      AuthModel(
        token: token ?? this.token,
        user: user ?? this.user,
      );
}
