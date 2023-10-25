import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    int userId;
    int id;
    String title;
    bool _completed;

  bool get completed => _completed;

  set completed(bool value) {
    _completed = value;
  }

    Welcome({
        required this.userId,
        required this.id,
        required this.title,
        required bool completed,
    }) : _completed = completed;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}