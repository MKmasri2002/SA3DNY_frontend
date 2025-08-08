class UserModel {
  String id;
  String fullName;
  String phoneNumber;
  String email;
  String location;
  String password;
  String userName;
  String role;

  UserModel({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.location,
    required this.password,
    required this.userName,
    required this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
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
