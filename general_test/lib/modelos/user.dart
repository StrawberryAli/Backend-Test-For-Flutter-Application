import 'package:general_test/modelos/item.dart';

class User{
  final id;
  final userName;
  final email;
  final password;
  List<Item>? itens;
  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.password,
    this.itens
  });

  factory User.fromJson(Map<String,dynamic> json) => User(
    id: json['id'], 
    userName: json['userName'], 
    email: json['email'],
    password: json['password'],
    itens: json['itens']
  );
}