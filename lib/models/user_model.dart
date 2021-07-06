import 'dart:convert';

class UserModel {
  late String id;
  late String name;
  late String avatar;
  late String email;
  
  UserModel({
    required this.id,
    required this.name,
    required this.avatar,
    required this.email,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'avatar': avatar,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      avatar: map['avatar'],
      email:  map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
