import 'dart:convert';

import 'package:flutter_bloc_6/model/apimodel.dart';
import "package:http/http.dart" as http;

abstract class Repo 
{
  Future <List<Comment>>getData();
}
class RespoIml extends Repo
{
  @override
  Future <List <Comment>> getData()async {
      var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
      if(response.statusCode==200)
      {
        print("Sucssess");
        List<dynamic>body=jsonDecode(response.body);
        List<Comment>user=body.map((dynamic item) => Comment.fromJson(item),).toList();
        print(body);
        return user;
      } else {
        throw Exception('failed');
      }
  }
 
}