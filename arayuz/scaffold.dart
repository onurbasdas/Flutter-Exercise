import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScaffoldOgesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: Text('Onur Basdas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: () => Navigator.pushNamed(context, "/ilksayfa"),
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: 'Restitch it',
            onPressed: () => print("Restitch it"),
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: 'Repair it',
            onPressed: () => print("Repair it"),
          ),
        ],
      ),
      body: new Center(
        child: new GridView.count(
          primary: false,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            new GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/ilksayfa"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Tek Tiklama \n Ilk Sayfa Git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                  msg: "Bu öğeye bir defa tıkladınız!",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black,
                  textColor: Colors.green,
                );
              },
              onDoubleTap: () {
                Fluttertoast.showToast(
                  msg: "Bu öğeye iki defa tıkladınız!",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.green,
                  textColor: Colors.black,
                );
              },
              onLongPress: () {
                Fluttertoast.showToast(
                  msg: "Bu öğeye uzun tıkladınız!",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black,
                  textColor: Colors.green,
                );
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://i.stack.imgur.com/Y2JS4.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Toast Mesaji Kullanma",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/hello"),
              child: Card(
                child: Container(
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: new Text(
                    """Cift Tiklama
                Hello Sayfasina Git
                """,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onLongPress: () => Navigator.pushNamed(context, "/degisenwidget"),
              child: Card(
                child: Container(
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: new Text(
                    """Uzun Basma
                Degisebilen Widget Sayfasina Git
                """,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                debugPrint("Image Sayfasina gidiliyor.");
                Navigator.pushNamed(context, "/imageviews");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/lake.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Tek Tiklama \n ImageViews Sayfasina Git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                debugPrint("Alertview Sayfasina gidiliyor.");
                Navigator.pushNamed(context, "/alertvetextfield");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/lake.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "TextField Sayfasi\n Alertview Sayfasina Git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                debugPrint("Alertview Sayfasina gidiliyor.");
                Navigator.pushNamed(context, "/sharedkonusu");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/lake.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Shared Preferences \n Kullanımı Sayfasina Git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/hello"),
              child: Card(
                child: Container(
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: new Text(
                    """Cift Tiklama
                Hello Sayfasina Git
                """,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                debugPrint("Dosya Sayfasina gidiliyor.");
                Navigator.pushNamed(context, "/dosyakonusu");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/lake.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Dosya İşlemleri \n Sayfasina Git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                debugPrint("Json Sayfasina gidiliyor.");
                Navigator.pushNamed(context, "/jsonkonusu");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/lake.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Basit Json İşlemleri \n Sayfasina Git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/hello"),
              child: Card(
                child: Container(
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: new Text(
                    """Cift Tiklama
                Hello Sayfasina Git
                """,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onLongPress: () => Navigator.pushNamed(context, "/degisenwidget"),
              child: Card(
                child: Container(
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: new Text(
                    """Uzun Basma
                Degisebilen Widget Sayfasina Git
                """,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            new Container(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: new Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: new Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: new Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: new Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: new Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: new Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        //"Merhaba Onur",
        //style: Theme.of(context).textTheme.headline6,
        //textDirection: TextDirection.ltr,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.archive),
            title: new Text("Arsiv"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.announcement),
            title: new Text("Bilgilendirme"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.assessment),
            title: new Text("Degerlendirme"),
          ),
        ],
        onTap: (int i) {
          switch (i) {
            case 0:
              debugPrint("Tıkladığınız buton: Arşiv");
              break;
            case 1:
              debugPrint("Tıkladığınız buton: Bilgilendirme");
              break;
            case 2:
              debugPrint("Tıkladığınız buton: Değerlendirme");
              break;
            default:
              debugPrint("Tıkladığınız butonun ismi bulunamadı.");
              break;
          }
        },
      ),
      drawer: new Drawer(
        child: new ListTile(
          leading: Icon(Icons.change_history),
          title: Text('\n\n\nChange history'),
          onTap: () {
            // change app state...
            Navigator.pop(context); // close the drawer
            debugPrint("Yan menü öğesine tıkladınız.");
          },
        ),
      ),
    );
  }
}
