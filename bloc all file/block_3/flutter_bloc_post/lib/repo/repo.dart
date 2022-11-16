import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter_bloc_post/models/model.dart';

abstract class Repo{
   Future <List<Post>> getData();
}

class RespoImpl extends Repo{
  @override
  Future <List <Post>> getData()async {
    var  response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode==200){

       print(" sucssess");
  
List<dynamic> body = jsonDecode(response.body);

      List<Post> user = body.map((dynamic item) =>Post.fromJson(item),).toList();

      print(body);

      return user;

     }else {

          throw Exception('Failed');
      }
  }

} 
