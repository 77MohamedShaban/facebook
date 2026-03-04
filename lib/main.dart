import 'package:facebook/screens/home/home_screen.dart';
import 'package:facebook/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => const LoginScreen(),
        HomeScreen.roputeName: (_) => const HomeScreen(),
      },
    );
  }
}
