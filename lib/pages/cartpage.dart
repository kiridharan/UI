import 'package:ecom_iu/paint/bluebgpaint.dart';
import 'package:ecom_iu/widget/Listviewitem.dart';
import 'package:ecom_iu/widget/navbarcart.dart';

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return CustomPaint(
      painter: BluebackgroundCustomPainter(),
      child: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            NavBarCart(),
            Listviewitem(),
          ],
        ),
      ),
    );
  }
}

// class ItemListWidget extends StatelessWidget {
//   const ItemListWidget({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 370,
//       height: 150,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             spreadRadius: 10,
//             color: Color(0xff005DFF).withOpacity(.1),
//           ),
//         ],
//       ),
//     );
//   }
// }
