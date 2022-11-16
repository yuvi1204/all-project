import 'dart:convert';

Album dataFromjson(String str)=>Album.fromJson(json.decode(str));
String dataToJson(Album data)=>json.encode(data.toString());

class Album
{
    int id;
    String? title;

  Album( {required this. id, required this.title});
  factory Album.fromJson(Map<String,dynamic>json)=>Album(
    id:json['id'],
    title:json['title']);
    Map<String,dynamic>tojson()=>{
      'id':id,
      'title':title
    };

}