import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SharedKonusu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedState();
}

class SharedState extends State<SharedKonusu> {
  final isimCtrl = TextEditingController();
  final soyisimCtrl = TextEditingController();
  final genelCtrl = GlobalKey<FormState>();

  String isimstr = "";
  String soyisimstr = "";
  bool kayitDurumu = false;
  int kayitNo = 0;

  @override
  void dispose() {
    isimCtrl.dispose();
    soyisimCtrl.dispose();
    super.dispose();
  }

  void kayitYap(String gIsim, String gSoyisim) async {
    final kayitAraci = await SharedPreferences.getInstance();
    if (genelCtrl.currentState.validate()) {
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayitno", 1);
      kayitAraci.setString("isim", gIsim);
      kayitAraci.setString("soyisim", gSoyisim);

      Fluttertoast.showToast(
        msg: "Kayıt başarılı bir şekilde gerçekleşti",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  void kayitGoster() async {
    final kayitAraci = await SharedPreferences.getInstance();

    bool kDurum = kayitAraci.getBool("durum");
    int kNo = kayitAraci.getInt("kayitno");
    String kIsim = kayitAraci.getString("isim");
    String kSoyisim = kayitAraci.getString("soyisim");
    setState(() {
      kayitDurumu = kDurum;
      kayitNo = kNo;
      isimstr = kIsim;
      soyisimstr = kSoyisim;
    });
    Fluttertoast.showToast(
      msg: "Kayıt başarılı bir şekilde gerçekleşti",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void kayitSil() async {
    final kayitAraci = await SharedPreferences.getInstance();
    //tüm kayıtları silmek için kayitAraci.clear();
    //istediğimiz kayıtları silmek için
    kayitAraci.remove("durum");
    kayitAraci.remove("kayitno");
    kayitAraci.remove("isim");
    kayitAraci.remove("soyisim");

    Fluttertoast.showToast(
      msg: "Kayıt başarılı bir şekilde silindi",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences Kullanımı"),
      ),
      body: Form(
        key: genelCtrl,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (deger) {
                  if (deger.length < 3) {
                    return "Lütfen isminizi en az 3 harfle yazınız";
                  }
                },
                controller: isimCtrl,
                decoration: InputDecoration(hintText: "Isminizi giriniz:"),
              ),
              TextFormField(
                validator: (deger) {
                  if (deger.length < 3) {
                    return "Lütfen soyisminizi en az 3 harfle yazınız";
                  }
                },
                controller: soyisimCtrl,
                decoration: InputDecoration(hintText: "Soyisminizi giriniz:"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text(
                          "Kaydet",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () =>
                            kayitYap(isimCtrl.text, soyisimCtrl.text),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          "Getir",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => kayitGoster(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text(
                          "Sil",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => kayitSil(),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("İsim: $isimstr"),
                      Text("Soyisim: $soyisimstr"),
                      Text("Kayıt Durumu: $kayitDurumu"),
                      Text("Kayıt Numarası: $kayitNo"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
