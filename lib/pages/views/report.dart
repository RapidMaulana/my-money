import 'package:flutter/material.dart';

void main() {
  runApp(ReportApp());
}

class ReportApp extends StatelessWidget {
  const ReportApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
            height: 106,
            decoration: BoxDecoration(
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
                child: Text('Report',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              )
            ]),
          ),
          // Align(
          //   alignment: Alignment.,
          //   child: Image.asset('public/images/bottom.png'),
          // )
        ]),
      ),
    );
  }
}
