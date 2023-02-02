import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mymoney/pages/auth/mainAuth.dart';
import 'package:mymoney/pages/views/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainApp(),
        '/dashboard':(context) => DashboardApp()
      },
    );
  }
}
