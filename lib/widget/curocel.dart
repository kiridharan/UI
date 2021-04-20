

import 'package:ecom_iu/models/chair.dart';
import 'package:flutter/material.dart';

class CuroselChair extends StatelessWidget {
  const CuroselChair({
    Key key,
    @required this.chair,
  }) : super(key: key);

  final Chair chair;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 25.0,
            bottom: 10,
            top: 10,
          ),
          width: 150.0,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 8.0,
                  color: Colors.lightBlue.withOpacity(.1),
                ),
              ],
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            margin: EdgeInsets.all(5),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      height: 300,
                      width: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                height: 100.0,
                                width: 150.0,
                                image: AssetImage(chair.imageUrl[0]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  chair.model,
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  chair.infosimple,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  chair.rate,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff005DFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                  spreadRadius: 1,
                )
              ],
              color: Color(0xff005DFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.bookmark_border),
                onPressed: () {}),
          ),
        )
      ],
    );
  }
}
