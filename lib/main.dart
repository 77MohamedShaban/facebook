import 'package:basics/ui/home/screen/home_screen.dart';
import 'package:basics/ui/login/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xFF68A1FF),
          selectionColor: Color(0xFF68A1FF),
          selectionHandleColor: Color(0xFF68A1FF),
        ),
      ),
      title: "facebook",
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
