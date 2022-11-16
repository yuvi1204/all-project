import 'dart:convert';
Post dataFromJson(String str) => Post.fromJson(json.decode(str));

String dataToJson(Post data) => json.encode(data.toJson());

class Post
{
  int? id;
  int? userId;
  String? titile;
  String? body;

  Post({required this.id,required this.userId,required this.titile,required this.body});

  factory Post.fromJson(Map<String,dynamic>json)=>Post(
         id: json['id'], 
         userId: json['userId'],
         titile: json['titile'],
         body: json['body']
      );

      Map<String,dynamic>toJson()=>{
        'id':id ,
        'userId':userId,
        'titile':titile,
        'body':body,

      };
}