class User {
  User({
    required this.nombre,
    required this.email,
    required this.telefono,
    required this.fechaNacimiento,
  });

  /// User name
  final String nombre;

  /// User email
  final String email;

  /// User phone
  final String telefono;

  /// User birth date
  final String fechaNacimiento;

  /// Convert the object to a json
  Map<String, dynamic> get toJson => {
        "nombre": nombre,
        "email": email,
        "telefono": telefono,
        "fecha_nacimiento": fechaNacimiento,
      };

  /// Convert the json to an object
  factory User.fromJson(Map<String, dynamic> json) => User(
        nombre: json["nombre"],
        email: json["email"],
        telefono: json["telefono"],
        fechaNacimiento: json["fecha_nacimiento"],
      );

  /// Default constructor
  factory User.getDefault() => User(
        nombre: '',
        email: '',
        telefono: '',
        fechaNacimiento: '',
      );

  /// Copy the object
  User copyWith({
    String? nombre,
    String? email,
    String? telefono,
    String? fechaNacimiento,
  }) =>
      User(
        nombre: nombre ?? this.nombre,
        email: email ?? this.email,
        telefono: telefono ?? this.telefono,
        fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      );
}
