import 'package:flutter/material.dart';

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
                    child:
                    Text('History',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  )
                ]),
              )
            ],
          ),
        ));
  }
}
