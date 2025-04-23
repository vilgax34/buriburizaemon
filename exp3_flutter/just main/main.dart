import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single File Layout App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

// 🏠 Home Screen Layout
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to My Layout App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-6b1c7d7a59ec1d995e68b12c6ee7d2dcf3b2042bfc04e842dcf4e94b60df32b5.png',
              height: 200,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  ),
                  child: Text('Go to About'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('This is a second button!')),
                    );
                  },
                  child: Text('Click Me'),
                ),
              ],
            ),
            Spacer(),
            Center(child: Text('© 2025 MyApp', style: TextStyle(color: Colors.grey))),
          ],
        ),
      ),
    );
  }
}

// ℹ️ About Screen Layout
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About This App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'This single-file Flutter app demonstrates layout widgets, '
                  'navigation between screens, and reusable design in the simplest way.',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Back to Home'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
