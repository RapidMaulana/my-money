import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Row(
                
              ),
              Container(
                margin: EdgeInsets.only(right: 40, left: 40),
                child: Container(
                  child: Image.asset('public/images/illust.png'),
                ),
              )
            ],
          ),
        ),
    );
  }
}
