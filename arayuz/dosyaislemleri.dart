import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class KayitIslemleri {
  //uygulamanın dosya kayıt yolunu alıyoruz
  Future<String> get dosyaYolu async {
    final konum = await getApplicationDocumentsDirectory();
    return konum.path;
  }

  //dosyamızı oluşturuyoruz
  Future<File> get yerelDosya async {
    final yol = await dosyaYolu;
    return File("$yol/yenidosya.text");
  }

  //dosya okuma işlemleri
  Future<String> dosyaOku() async {
    try {
      final dosya = await yerelDosya;
      String icerik = await dosya.readAsString();
      return icerik;
    } catch (h) {
      return "dosya okumada hata oluştu: $h";
    }
  }

  //dosya yazma işlemleri
  Future<File> dosyaYaz(String gIcerik) async {
    final dosya = await yerelDosya;
    return dosya.writeAsString("$gIcerik");
  }
}

class DosyaIslemleri extends StatefulWidget {
  final KayitIslemleri kayitislemi;

  const DosyaIslemleri({Key key, this.kayitislemi}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DosyaState();
}

class DosyaState extends State<DosyaIslemleri> {
  final yaziCtrl = TextEditingController();
  String veri = "";
  Future<File> veriKaydet() async {
    setState(() {
      veri = yaziCtrl.text;
    });
    return widget.kayitislemi.dosyaYaz(veri);
  }

  @override
  void initState() {
    super.initState();
    widget.kayitislemi.dosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }

  void veriOku() {
    widget.kayitislemi.dosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dosya İşlemleri"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Dosyaya yazmak istediğiniz verileri buraya yazın.",
            ),
            controller: yaziCtrl,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: veriKaydet,
                    child: Text(
                      "Kaydet",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: veriOku,
                    child: Text(
                      "Oku",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("$veri"),
            ),
          ),
        ],
      ),
    );
  }
}
