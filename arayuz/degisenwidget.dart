import 'package:flutter/material.dart';
import 'package:youtube/arayuz/ilksayfa.dart';

/*class DegisenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Statefull Konusu",
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new HomePage(),
    );
  }
}*/

class DegisenWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<DegisenWidget> {
  int degisensayi = 0;
  void sayiyiArttir() {
    setState(() {
      degisensayi++;
    });
  }

  void sayiyiAzalt() {
    setState(() {
      degisensayi--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull-Stateless"),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.green,
              child: Text("Sayiyi Arttir"),
              onPressed: sayiyiArttir,
            ),
            Text(
              "Sayi: $degisensayi",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 25,
                  color: degisensayi < 0 ? Colors.red : Colors.green),
            ),
            FlatButton(
              color: Colors.red,
              child: Text("Sayiyi Azalt"),
              onPressed: sayiyiAzalt,
            ),
          ],
        ),
      ),
    );
  }
}
