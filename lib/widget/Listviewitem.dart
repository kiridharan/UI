import 'package:ecom_iu/models/chair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Listviewitem extends StatefulWidget {
  @override
  _ListviewitemState createState() => _ListviewitemState();
}

class _ListviewitemState extends State<Listviewitem> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height / 1.31,
      width: 400,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: chairs.length,
        itemBuilder: (BuildContext context, int index) {
          Chair chair = chairs[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff005DFF).withOpacity(.1),
                  spreadRadius: 10,
                  blurRadius: 40,
                ),
              ],
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            width: 400,
            height: 120,
            // color: Colors.red,

            child: InkWell(
              onTap: () {
                print("Pressed");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => DetailChairView(
                //             chair: chair,
                //           )),
                // );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image(
                        image: AssetImage(chair.imageUrl[0]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 250,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                chair.model.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                chair.rate,
                                style: TextStyle(
                                  color: Color(0xff005DFF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Quality:1",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " color+${chair.color}",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Remove");
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    SimpleLineIcons.bag,
                                    size: 20,
                                    color: Color(0xff005DFF),
                                  ),
                                  Text(
                                    "REMOVE",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff005DFF),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
