import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mymoney/pages/auth/login.dart';

import 'package:mymoney/pages/auth/mainAuth.dart';
import 'package:mymoney/pages/auth/register.dart';
import 'package:mymoney/pages/views/dashboard.dart';
import 'package:mymoney/pages/splashscreen.dart';
import 'package:mymoney/pages/views/history.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
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
        '/dashboard': (context) => const DashboardApp(),
        '/login': (context) => const MainApp(),
        '/history': (context) => const HistoryApp(),
        '/loginn': (context) => const LoginApp(),
        '/registrasi': (context) => const RegisApp()
      },
    );
  }
}
