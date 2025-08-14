class UserModel {
  String id;
  String name;
  String phone;
  String email;
  String location;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.location,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      phone: json["phone"] ?? "",
      email: json["email"] ?? "",
      location: json["location"] ?? "",
    );
  }
}
