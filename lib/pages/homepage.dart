import 'package:ecom_iu/paint/bluebgpaint.dart';
import 'package:ecom_iu/widget/bestselling.dart';
import 'package:ecom_iu/widget/center_container.dart';
import 'package:ecom_iu/widget/navbarhome.dart';
import 'package:ecom_iu/widget/treding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BluebackgroundCustomPainter(),
      child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            NavBar(),
            CenterContainer(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "BEST SELLING",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Curocel(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "TRENDING",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ),
            ),
            TCurocel(),
          ],
        )),
      ),
    );
  }
}
