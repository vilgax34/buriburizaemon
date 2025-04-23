import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Common Widgets'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2f152024cbbfba758405d7ffb5f4fcb9f0a90a1dd4fa9b22d59d6bfc1725c43f.png',
              height: 150,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.pink),
                Icon(Icons.thumb_up, color: Colors.blue),
                Icon(Icons.share, color: Colors.green),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'This is a container with some padding and background color.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Pressed!')),
                );
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
