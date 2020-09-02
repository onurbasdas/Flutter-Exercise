import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as baglanti;
import 'dart:convert';

//fake api sahte json

/*
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}
*/
class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({this.userId, this.id, this.title, this.body});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}

Future<Post> postuGetir() async {
  final cevap =
      await baglanti.get("https://jsonplaceholder.typicode.com/posts/1");
  if (cevap.statusCode == 200) {
    return Post.fromJson(json.decode(cevap.body));
  } else {
    throw Exception(
        "Veriler getirilirken hata oluştu. Hata kodu: ${cevap.statusCode}");
  }
}

class JsonKonusu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Konusu"),
      ),
      body: Center(
        child: FutureBuilder<Post>(
            future: postuGetir(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                int userId = snapshot.data.userId;
                int id = snapshot.data.id;
                String title = snapshot.data.title;
                String body = snapshot.data.body;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Gelen userId: $userId"),
                    Text("Gelen id: $id"),
                    Text("Gelen title: $title"),
                    Text("Gelen body: $body"),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("Hata oluştu: ${snapshot.error}");
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
