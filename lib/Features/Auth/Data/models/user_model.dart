// user_model.dart
class UserModel {
  final String id;
  final String email;
  final String username;
  final String? imageUrl; // Optional image URL field

  UserModel({
    required this.id,
    required this.email,
    required this.username,
    this.imageUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'imageUrl': imageUrl,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      username: json['username'],
      imageUrl: json['imageUrl'],
    );
  }
}
