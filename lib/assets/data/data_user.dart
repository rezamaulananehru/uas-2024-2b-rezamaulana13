class UserModel {
  final int id;
  final String name;
  final String email;
  final String password;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  // Factory constructor untuk membuat objek UserModel dari JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  // Menambahkan metode untuk mengonversi objek ke Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  // Bisa menambahkan toString untuk mempermudah debugging
  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email}';
  }
}
