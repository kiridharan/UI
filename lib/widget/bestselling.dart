import 'package:ecom_iu/models/chair.dart';
import 'package:ecom_iu/widget/curocel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Curocel extends StatefulWidget {
  @override
  _CurocelState createState() => _CurocelState();
}

class _CurocelState extends State<Curocel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chairs.length,
        itemBuilder: (BuildContext context, int index) {
          Chair chair = chairs[index];
          return CuroselChair(chair: chair);
        },
      ),
    );
  }
}