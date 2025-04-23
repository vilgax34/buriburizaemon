import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyTabBarLayout(),
    );
  }
}

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Navigation'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            ProfileScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
