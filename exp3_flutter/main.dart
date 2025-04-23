import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
