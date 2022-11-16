import 'dart:convert';
import 'package:flutter_bloc_second/models/albumsmodel.dart';
import "package:http/http.dart" as http;

abstract class Repo{
   Future <List<Photo>> getData();
}

class RespoImpl extends Repo{
  @override
  Future <List <Photo>> getData()async {
    var  response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if(response.statusCode==200){

       print(" sucssess");
  
List<dynamic> body = jsonDecode(response.body);

      List<Photo> user = body.map((dynamic item) =>Photo.fromJson(item),).toList();

      print(body);

      return user;

     }else {

          throw Exception('Failed');
      }
  }

} 