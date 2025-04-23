import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TabBar Navigation',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyTabBarLayout(),
    );
  }
}

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
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

// -------------------- Screens Below --------------------

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome to Home!',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is your Profile',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
