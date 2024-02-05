import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchContent(String url) async{
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  if(response.statusCode==200){
    return json.decode(response.body);
  }
  else{
    return Exception('Failed to load content');
  }
}

Future<dynamic> createContent(String url,Map<String, dynamic> request) async{
  final uri = Uri.parse(url);
  final response = await http.post(uri,headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },body: jsonEncode(request));
  if (response.statusCode==201){
    return json.decode(response.body);
  }
  else{
    return Exception('Failed to create content');
  }
}

Future<dynamic> updateContent(String url,Map<String, dynamic> request) async{
  final uri = Uri.parse(url);
  final response = await http.put(uri, body: request);
  if (response.statusCode==200){
    return json.decode(response.body);
  }
  else{
    return Exception('Failed to update content');
  }
}
Future<dynamic> deleteContent(String url) async{
  final uri = Uri.parse(url);
  final response = await http.delete(uri);
  if (response.statusCode==200){
    return null;
  }
  else{
    return Exception('Failed to delete content');
  }
}
