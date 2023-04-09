import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(HistoryApp());
}

class HistoryApp extends StatelessWidget {
  const HistoryApp();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                height: 106,
                decoration: BoxDecoration(
                    color: Color(0xff5C85E6),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Row(children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      child: Image.asset(
                        'public/images/back.png',
                        width: 20,
                        height: 20,
                      )),
                  Align(
                    widthFactor: 5,
                    alignment: Alignment.center,
                    child: Text('History',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Column(
                  children: [
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'public/images/_Spotify.png',
                              width: 32,
                              height: 32,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Spotify',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )),
                          ],
                        ),
                        Container(
                          child: Text(
                            'Rp. 17.000',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0.0),
                padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                child: Column(
                  children: [
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'public/images/_Amazon.png',
                              width: 32,
                              height: 32,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Amazon Prime',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )),
                          ],
                        ),
                        Container(
                          child: Text(
                            'Rp. 79.000',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0.0),
                padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                child: Column(
                  children: [
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'public/images/_Apple.png',
                              width: 32,
                              height: 32,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Apple Store',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )),
                          ],
                        ),
                        Container(
                          child: Text(
                            'Rp. 50.000',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
