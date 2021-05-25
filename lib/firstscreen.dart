import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_artistic1/secondscreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
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

          //Large rect
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Transform.rotate(
              angle: -15 * pi / 180,
              child: Container(
                height: 120,
                width: size.width,
                color: Colors.pink[800],
              ),
            ),
          ),

          //border of large rect

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 25.0,
              ),
            ),
          ),

          //Image

          Padding(
            padding: EdgeInsets.only(top: 35.0),
            child: Image(
              height: 350,
              width: size.width,
              image: AssetImage('assets/images/girl.png'),
            ),
          ),

          //small rect

          Padding(
            padding: EdgeInsets.only(top: 350),
            child: Transform.rotate(
              angle: -15 * pi / 180,
              child: Container(
                height: 90,
                width: size.width,
                color: Colors.blue[400],
              ),
            ),
          ),

          //small rect left border

          Container(
            margin: EdgeInsets.only(top: 350),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 65.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          //small rect right border

          Container(
            margin: EdgeInsets.only(top: 250),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          //last content

          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 20,
                  ),
                  child: Text(
                    'Millions of people use to turn their ideas into reality',
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Skip Now',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return SecondScreen();
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.pink[800],
                            borderRadius: BorderRadius.circular(14.0)),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
