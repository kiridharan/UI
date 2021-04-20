import 'package:ecom_iu/models/chair.dart';
import 'package:ecom_iu/widget/curocel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TCurocel extends StatefulWidget {
  @override
  _TCurocelState createState() => _TCurocelState();
}

class _TCurocelState extends State<TCurocel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tchairs.length,
        itemBuilder: (BuildContext context, int index) {
          Chair chair = tchairs[index];
          return CuroselChair(chair: chair);
        },
      ),
    );
  }
}
