import 'package:flutter/material.dart';
import 'package:flutter_artistic1/thirdscreen.dart';

class SecondScreen extends StatelessWidget {
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
              ),
            ),
          ),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Hey, \nLogin',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //create account
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 12,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'if you are new /',
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          TextSpan(
                            text: 'Create new account',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //textfields
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.orange.shade200,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      hintText: 'Username',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  //forget password
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      bottom: 12,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'forget password? /',
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          TextSpan(
                            text: 'Reset',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //login button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return ThirdScreen();
                        }),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0),
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.red.shade900,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),

                  //skip now

                  Container(
                    padding: EdgeInsets.only(
                      top: 30.0,
                      bottom: 70.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'skip now',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
