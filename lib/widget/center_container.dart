import 'package:flutter/material.dart';

class CenterContainer extends StatefulWidget {
  @override
  _CenterContainerState createState() => _CenterContainerState();
}

class _CenterContainerState extends State<CenterContainer> {
  final List<List<String>> products = [
    ["assets/images/start.jpg", "chairs Offser"],
    ["assets/images/darkblue1.jpg", "Shop Now ", "Get this at cheap"],
    ["assets/images/white4.jpg", "Wanna purchase" , ]
  ];
  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _previous() {
    setState(() {
      if (currentIndex < 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            _previous();
          } else if (details.velocity.pixelsPerSecond.dx < 0) {
            _next();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(products[currentIndex][0]),
              fit: BoxFit.fill,
            ),
            color: Colors.white.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlue[100].withOpacity(0.2),
                blurRadius: 20.0, // soften the shadow
                spreadRadius: 20.0, //extend the shadow
                offset: Offset(
                  2.0, // Move to right 10  horizontally
                  2.0, // Move to bottom 10 Vertically
                ),
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 20.0, // soften the shadow
                spreadRadius: 20.0, //extend the shadow
                offset: Offset(
                  2.0, // Move to right 10  horizontally
                  2.0, // Move to bottom 10 Vertically
                ),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          height: 225,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Color(0xff005DFF).withOpacity(0.1),
                  Colors.grey[700].withOpacity(.0),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 90,
                  margin: EdgeInsets.only(left: 250, bottom: 20),
                  child: Row(
                    children: _buildIndicator(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isActive
                ? Color(0xff005DFF)
                : Colors.grey[100].withOpacity(0.8)),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicator = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicator.add(_indicator(true));
      } else {
        indicator.add(_indicator(false));
      }
    }
    return indicator;
  }
}
