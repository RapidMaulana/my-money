import 'package:flutter/material.dart';
import 'package:mymoney/pages/auth/login.dart';

import 'package:mymoney/pages/auth/mainAuth.dart';
import 'package:mymoney/pages/auth/register.dart';
import 'package:mymoney/pages/views/dashboard.dart';
import 'package:mymoney/pages/splashscreen.dart';
import 'package:mymoney/pages/views/history.dart';
import 'package:mymoney/pages/views/settings.dart';
import 'package:mymoney/pages/views/posting.dart';
import 'package:mymoney/pages/views/report.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/settings',
      routes: {
        '/': (context) => SplashApp(),
        '/dashboard': (context) => const DashboardApp(),
        '/login': (context) => const MainApp(),
        '/history': (context) => const HistoryApp(),
        '/loginn': (context) => const LoginApp(),
        '/registrasi': (context) => const RegisApp(),
        '/settings': (context) => const SettingsApp(), 
        '/posting': (context) => const PostingApp(), 
        '/report': (context) => const ReportApp(), 
      },
    );
  }
}