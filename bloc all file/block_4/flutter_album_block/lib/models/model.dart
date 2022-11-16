/*import 'dart:convert';
Album dataFromjson(String str)=>Album.fromJson(json.decode(str));
String dataToJson(Album data)=>json.encode(data.toString());

class Album
{
  int? userid;
  int? id;
  String? title;

  Album({required this.userid,required this.id,required this.title });

  factory Album.fromJson(Map<String,dynamic>json)=>Album(
    userid: json['userId'], 
    id: json['id'],
     title: json['title']);

     Map<String,dynamic>toJson()=>{
      'userId':userid,
      'id':id,
      'title':title
     };

}*/