import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavBarCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
              ),
              onPressed: () {
                print("back");
              },
            ),
            Text(
              "CART",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
              ),
            ),
            IconButton(
              icon: Icon(
                FontAwesome5Solid.ellipsis_h,
              ),
              onPressed: () {
                print("menu");
              },
            ),
          ],
        ),
      ),
    );
  }
}
