import 'dart:convert';
Album dataFromJson(String str) => Album.fromJson(json.decode(str));

String dataToJson(Album data) => json.encode(data.toJson());

class Album
{
   int? userId;
  int? id;
  String? titile;


  Album({required this.userId,required this.id,required this.titile,});

  factory Album.fromJson(Map<String,dynamic>json)=>Album(
          userId: json['userId'],
         id: json['id'],     
         titile: json['titile'],
         
      );

      Map<String,dynamic>toJson()=>{
        'userId':userId,
        'id':id , 
        'titile':titile,
        

      };
}