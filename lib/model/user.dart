class User {
  String id;
  String fullName;
  String phoneNumber;
  String email;
  String location;
  String password;
  String userName;
  String role;

  User({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.location,
    required this.password,
    required this.userName,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["_id"] ?? "",
      fullName: json["fullName"] ?? "",
      phoneNumber: json["phoneNumber"] ?? "",
      email: json["email"] ?? "",
      location: json["location"] ?? "",
      password: json["password"] ?? "",
      userName: json["userName"] ?? "",
      role: json["role"] ?? "",
    );
  }
}
