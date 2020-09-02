import 'package:flutter/material.dart';
import 'package:youtube/arayuz/alertvetext.dart';
import 'package:youtube/arayuz/dosyaislemleri.dart';
import 'package:youtube/arayuz/imageviews.dart';
import 'package:youtube/arayuz/jsonkonusu.dart';
import 'package:youtube/arayuz/sharedkonusu.dart';
import 'arayuz/ilksayfa.dart';
import 'arayuz/hello.dart';
import 'arayuz/scaffold.dart';
import 'arayuz/degisenwidget.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => ScaffoldOgesi(),
        "/ilksayfa": (context) => IlkSayfa(
              title: "Onur Ilk Sayfa",
            ),
        "/hello": (context) => Hello(),
        "/degisenwidget": (context) => DegisenWidget(),
        "/imageviews": (context) => ImageViews(),
        "/alertvetextfield": (context) => AlertVeTextField(),
        "/sharedkonusu": (context) => SharedKonusu(),
        "/dosyakonusu": (context) => DosyaIslemleri(
              kayitislemi: KayitIslemleri(),
            ),
        "/jsonkonusu": (context) => JsonKonusu(),
      },
    ),
  );
}
//new DegisenWidget()
//new MaterialApp(title: "Merhaba", home: new ScaffoldOgesi()),
