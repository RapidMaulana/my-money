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
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromRGBO(92, 133, 230, 1),
                  child: Container(
                    height: 550,
                    width: 300,
                    child: GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      padding: EdgeInsets.only(
                        top: 100,
                        left: 20,
                        right: 20,
                      ),
                      children: List.generate(6, (index) {
                        return (Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                          ),
                          child: Container(),
                        ));
                      }),
                    ),
                  ),
                )
              ],
            ),
          )
          // Align(
          //   alignment: Alignment.,
          //   child: Image.asset('public/images/bottom.png'),
          // )
        ]),
      ),
    );
  }
}
