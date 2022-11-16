/*import 'dart:convert';

import 'package:flutter_album_block/models/model.dart';
import "package:http/http.dart" as http;


abstract class Repo{
   Future <List<Album>> getData();
}

class RespoImpl extends Repo{
  @override
  Future <List <Album>> getData()async {
    var  response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if(response.statusCode==200){

       print(" sucssess");
  
List<dynamic> body = jsonDecode(response.body);

      List<Album> user = body.map((dynamic item) =>Album.fromJson(item),).toList();

      print(body);
      return user;
     }else {
          throw Exception('Failed');
      }
  }

} */