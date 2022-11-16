import 'dart:convert';

import 'package:flutter/foundation.dart';

Comment dataFromjson(String str) => Comment.fromJson(json.decode(str));
String dataToJson(Comment data) => json.encode(data.toString());

class Comment {
  int? id;
  String? name;
  String? email;
  String? body;

  Comment(
      {required this.id,
      required this.name,
      required this.email,
      required this.body});
  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      body: json['body']);
  Map<String, dynamic> tojson() =>
      {'id': id, 'name': name, 'email': email, 'body': body};
}
