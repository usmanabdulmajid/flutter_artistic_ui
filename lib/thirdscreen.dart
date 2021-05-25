import 'dart:math';

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
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
            margin: EdgeInsets.only(top: 35, left: 25.0, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.menu)
              ],
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

          //image

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: 195,
              ),
              height: 108,
              width: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42.0),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200.withOpacity(0.3),
                  )
                ],
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 28.0,
                  width: 28.0,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.camera_alt,
                    size: 20.0,
                  ),
                ),
              ),
            ),
          ),

          //remaining widgets

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Applied',
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          '28',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Reviewed',
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          '77',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Contracted',
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          '18',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Text(
                    'Completed Profile',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.15,
                  crossAxisSpacing: 12.0,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              height: 38.0,
                              width: 28.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.cast_for_education,
                                color: Colors.green.shade100,
                              ),
                            ),
                            Text(
                              'Education',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                        text: '04 sept ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Left',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                  color: Colors.black,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade200,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              height: 38.0,
                              width: 28.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.cast_for_education,
                                color: Colors.green.shade100,
                              ),
                            ),
                            Text(
                              'Professional',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                        text: '02 sept ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Left',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                  color: Colors.black,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 45),
                  alignment: Alignment.center,
                  child: Text(
                    'Buy pro \$23.7',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
