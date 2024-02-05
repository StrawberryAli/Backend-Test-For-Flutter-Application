import 'package:general_test/API/requerimento_de_api.dart';
import 'package:general_test/modelos/user.dart';

const String url = "http://localhost:3000/users";

Future<User?> fetchUser(Map<String, dynamic> request) async{
  final response = await fetchContent(url);
  try{
    return User.fromJson(response);
  }
  catch(e){
    return null;
  }
}

Future<User?> createUser(Map<String, dynamic> request) async{
  final response = await createContent(url, request);
  try{
    return User.fromJson(response);
  }
  catch(e){
    return null;
  }
}

Future<User?> updateUser(Map<String, dynamic> request) async{
  final response = await updateContent(url, request);
  try{
    return User.fromJson(response);
  }
  catch(e){
    return null;
  }
}
Future<User?> deleteUser(Map<String, dynamic> request) async{
  await deleteContent(url);
  try{
    return null;
  }
  catch(e){
    return null;
  }
}
