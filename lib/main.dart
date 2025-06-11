import 'package:flutter/material.dart';

void main() {
  runApp(const ExplicitAnimationScreen());
}

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explicit Animation'),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Center(
              child: RotationTransition(
                turns: _animation,
                child: Icon(
                  Icons.refresh,
                  size: 100,
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Animate"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.forward();
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
