import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedContainerUI(),
    );
  }
}

/// 🎯 Aim: To design a Flutter UI by applying animation on a Container widget.
class AnimatedContainerUI extends StatefulWidget {
  const AnimatedContainerUI({super.key});

  @override
  State<AnimatedContainerUI> createState() => _AnimatedContainerUIState();
}

class _AnimatedContainerUIState extends State<AnimatedContainerUI> {
  double _width = 150;
  double _height = 150;
  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(12);

  void _animateContainer() {
    setState(() {
      _width = _width == 150 ? 300 : 150;
      _height = _height == 150 ? 300 : 150;
      _color = _color == Colors.teal ? Colors.purple : Colors.teal;
      _borderRadius = _borderRadius == BorderRadius.circular(12)
          ? BorderRadius.circular(60)
          : BorderRadius.circular(12);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container UI'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _animateContainer,
              child: const Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
