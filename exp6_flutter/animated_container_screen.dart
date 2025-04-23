import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 150;
  double _height = 150;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _changeContainer() {
    setState(() {
      _width = _width == 150 ? 300 : 150;
      _height = _height == 150 ? 300 : 150;
      _color = _color == Colors.blue ? Colors.orange : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(8)
          ? BorderRadius.circular(75)
          : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _changeContainer,
              child: const Text('Animate Container'),
            ),
          ],
        ),
      ),
    );
  }
}
