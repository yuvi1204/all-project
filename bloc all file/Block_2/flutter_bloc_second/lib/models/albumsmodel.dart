import 'dart:convert';

Photo dataFromJson(String str) => Photo.fromJson(json.decode(str));

String dataToJson(Photo data) => json.encode(data.toJson());

class Photo{
  
   int? albumId;
   String? url;
   String? title;
   int? id;
   String? thumbnailUrl;

  Photo({ required this.id,required this.albumId,required this.thumbnailUrl,required this.title,required
       this.url});

  factory Photo.fromJson(Map<String, dynamic> json) =>Photo(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        albumId: json["albumid"],
        thumbnailUrl: json["thumbnailUrl"]);
        

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "url": url,
        "albumId":albumId,
        "thumbnailUrl":thumbnailUrl,

};
}