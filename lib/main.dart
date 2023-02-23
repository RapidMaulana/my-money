import 'package:flutter/material.dart';
import 'package:mymoney/pages/auth/login.dart';

import 'package:mymoney/pages/auth/mainAuth.dart';
import 'package:mymoney/pages/views/dashboard.dart';
import 'package:mymoney/pages/splashscreen.dart';
import 'package:mymoney/pages/views/history.dart';
import 'package:mymoney/pages/auth/login.dart';

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
        '/': (context) => SplashApp(),
        '/dashboard':(context) => const DashboardApp(),
        '/login':(context) => const MainApp(),
        '/history':(context) => const HistoryApp(),
        '/login':(context)=> const LoginApp()
      },
    );
  }
}
