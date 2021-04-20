import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
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
                Icons.menu,
              ),
              onPressed: () {
                print("Caterory");
              },
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    print("Search");
                  },
                ),
                GestureDetector(
                  onTap: () {
                    print("Navigate To profile");
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/images.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        //  color: Colors.white, //background color of box
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 3.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 10  horizontally
                            1.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
