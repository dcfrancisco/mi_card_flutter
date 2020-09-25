import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:mi_card/widgets/id_photo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      "assets/logo.png",
    );

    final profile = Image.asset(
      'assets/profile.jpg',
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 25),
                child: logo,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  bottom: 30.0,
                ),
                child: PhotoImage('assets/profile.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: Text(
                  'CHUCK BARTOWSKI',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: BarcodeWidget(
                  barcode: Barcode.code39(), // Barcode type and settings
                  data: 'CHUCK',
                  drawText: false,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
