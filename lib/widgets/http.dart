// ignore_for_file: empty_constructor_bodies, unused_import

import 'dart:convert';

import "package:http/http.dart" as http;

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult(
      {required this.id,
      required this.name,
      required this.job,
      required this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object["name"],
        job: object['job'],
        created: object['createdAt']);
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    var apiurl = "https://reqres.in/api/users";
    var result = await http.post(Uri.parse(apiurl), body: {
      "name": name,
      "job": job,
    });
    var jsonObject = json.decode(result.body);
    return PostResult.createPostResult(jsonObject);
  }
}
