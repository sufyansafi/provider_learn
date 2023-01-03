
// To parse this JSON data, do
//
//     final get = getFromJson(jsonString);

import 'dart:convert';

List<Get> getFromJson(String str) => List<Get>.from(json.decode(str).map((x) => Get.fromJson(x)));

String getToJson(List<Get> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
 
class Get {
    Get({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    int userId;
    int id;
    String title;
    String body;

    factory Get.fromJson(Map<String, dynamic> json) => Get(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}

