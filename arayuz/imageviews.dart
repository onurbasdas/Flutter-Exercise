import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageView Kullanimi"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text(
              "Internetteki resmi placeholder ile kullanma",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            FadeInImage.assetNetwork(
                placeholder: "assets/images/tenor.gif",
                image: "https://www.w3schools.com/w3css/img_lights.jpg"),
            Text(
              "Assets klasorü içideki resmi kullanma",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset("assets/images/lake.jpg"),
            Text(
              "Internetteki resmi kullanma",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Image.network(
                "https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png"),
          ],
        ),
      ),
    );
  }
}
