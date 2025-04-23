import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About This App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'This app is designed using layout widgets in Flutter.\n\n'
                  'It shows how to structure files, navigate between screens, '
                  'and use reusable widgets like buttons and constants.',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Back'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
