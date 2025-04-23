import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: kPrimaryColor),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to My Flutter App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-6b1c7d7a59ec1d995e68b12c6ee7d2dcf3b2042bfc04e842dcf4e94b60df32b5.png',
              height: 200,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  text: 'Go to About',
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                CustomButton(
                  text: 'Another',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('This is another button!')),
                    );
                  },
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text('© 2025 MyApp Inc.', style: TextStyle(color: Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}
