import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
          ),

          //semic circle
          Container(
            margin: EdgeInsets.only(top: 35, left: 5.0),
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),

          //border
          Container(
            decoration: BoxDecoration(
                border: Border.all(
              width: 25.0,
              color: Colors.white,
            )),
          )
        ],
      ),
    );
  }
}
